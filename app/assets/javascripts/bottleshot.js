function Bottleshot(attributes){
  this.id = attributes.id
  this.status = attributes.status
  this.varietal = attributes.varietal
  this.vintage = attributes.vintage
  this.fullname = attributes.vintage + " " + attributes.varietal
  this.screenprinted = attributes.screenprinted
  this.is_screenprinted = function() {
    if (this.screenprinted == true) {
      return "Yes"
    } else {
      return "No"
    }
  }
  /*this.bottle_shape = attributes.bottle_shape
  this.glass_color = attributes.glass_color
  this.wine_color = attributes.wine_color
  this.capsule = attributes.capsule
  this.paperstock = attributes.paperstock
  this.label_finish = attributes.label_finish
  this.add_ons = attributes.add_ons
  
  
  this.all_add_ons = function() {
    var add_ons = []
    this.add_ons.forEach(function(add_on) {
      add_ons.push(add_on["name"])
    })
    return add_ons.join(", ")
  }*/
}

Bottleshot.prototype.appendToDOM = function(element, userId) {
  var li = `<li class="bottleshot-info"><span><a class="bottleshot-varietal" href="/users/${userId}/bottleshots/${this.id}">${this.fullname}</a></span> - <span>${this.status}</span></li>`
  element.append(li)

}

