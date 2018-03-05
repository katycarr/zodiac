class User {
  constructor(name, birthday) {
    this.name = name
    this.birthday = birthday
  }

  postUser() {
    let options = {
      method: 'POST',
      headers: {
        'Content-Type':'application/json',
        Accept:'application/json'
      },
      body: JSON.stringify({user:{name:this.name, birthday:this.birthday}})
    }
    fetch('http://localhost:3000/api/v1/users', options)
      .then(res => res.json())
      .then(json => {
        let app = new App();
        app.getDetail(json.sign.id)
      })
  }
}
