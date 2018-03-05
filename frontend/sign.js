class Sign {
  constructor(data) {
    this.name = data.name
    this.start = this.numToDate(data.start)
    this.end = this.numToDate(data.end)
    this.users = data.users
    this.description = data.description
    this.id = data.id
    this.imgUrl = data.img_url
  }

  numToDate(num) {
    let str = num.toString();
    let date = new Date(str.slice(0,4), str.slice(4,6), str.slice(6));
    return date.toDateString().slice(4,-5)
  }

  render() {
    let title = `<h5>${this.name}</h5>`
    let range = `<p>${this.start}-${this.end}</p>`
    let signDiv = `<div class='sign-item' data-id='${this.id}'>${title}${range}</div>`
    return signDiv
  }

  renderDetail() {
    let img =  `<img src='${this.imgUrl}'>`
    let title = `<h1 class="inline">${this.name}</h1>`
    let range = `<p class="inline">${this.start}-${this.end}</p>`
    let label = `<p class="label">Users with this sign:</p>`
    let userList = '<ul class="inline">'
    this.users.forEach(user => {
      let li = `<li>${user.name}</li>`
      userList += li
    })
    userList += '</ul>'
    let description = `<p class="description">${this.description}</p>`
    let detailDiv = img+title+range+userList+description
    return detailDiv
  }
}
