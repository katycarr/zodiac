class App {
  constructor() {
    this.signContainer = document.getElementById('sign-container')
    this.baseUrl = 'http://localhost:3000/api/v1/signs';
    this.detailContainer = document.getElementById('detail-container')
    this.signupForm = document.querySelector('#signup form')
    this.nameInput = document.getElementById('name')
    this.dateInput = document.getElementById('birthday')
  }

  getSigns() {
    fetch(this.baseUrl)
      .then(res => res.json())
      .then(json => {
        json.forEach(data => {
          let sign = new Sign(data);
          let markup = sign.render();
          this.appendSigns(markup)
        })
        this.addListeners();
      })
  }

  appendSigns(sign_markup) {
    this.signContainer.innerHTML += sign_markup;
  }

  addListeners() {
    let signs = document.querySelectorAll('.sign-item')
    signs.forEach(sign => {
      sign.addEventListener('click', event => {
        this.getDetail(sign.dataset.id);
      })
    })

    this.signupForm.addEventListener('submit', event => {
      event.preventDefault();
      let user = new User(this.nameInput.value, this.dateInput.value)
      user.postUser();
      this.nameInput.value = ''
      this.dateInput.value = ''
    })
  }

  getDetail(id) {
    fetch(this.baseUrl+'/'+id)
      .then(res => res.json())
      .then(json => {
        let sign = new Sign(json)
        let html = sign.renderDetail();
        this.detailContainer.innerHTML = html
      })
  }
}
