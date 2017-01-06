function Bottleshot(attributes){
  this.id = attributes.id
  this.status = attributes.status
  this.varietal = attributes.varietal
  this.vintage = attributes.vintage
  this.bottle_shape = attributes.bottle_shape
  this.glass_color = attributes.glass_color
  this.wine_color = attributes.wine_color
  this.capsule = attributes.capsule
  this.paperstock = attributes.paperstock
  this.label_finish = attributes.label_finish
  this.add_ons = attributes.add_ons
  this.screenprinted = attributes.screenprinted
  this.fullname = attributes.vintage + " " + attributes.varietal
}

Bottleshot.prototype.renderBottleShape = function() {
  if (this.bottle_shape == null) {
    return "N/A"
  } else {
    return this.bottle_shape.name
    debugger
  }
}

Bottleshot.prototype.renderGlassColor = function () {
  if (this.glass_color == null) {
    return "N/A"
  } else {
    return this.glass_color.name
  }
}

Bottleshot.prototype.renderWineColor = function () {
  if (this.wine_color == null) {
    return "N/A"
  } else {
    return this.wine_color.name
  }
}

Bottleshot.prototype.renderCapsule = function () {
  if (this.capsule == null) {
    return "N/A"
  } else {
    return this.capsule.name
  }
}

Bottleshot.prototype.renderPaperstock = function () {
  if (this.paperstock == null) {
    return "N/A"
  } else {
    return this.paperstock.name
  }
}

Bottleshot.prototype.renderLabelFinish = function () {
  if (this.label_finish == null) {
    return "N/A"
  } else {
    return this.label_finish.name
  }
}

Bottleshot.prototype.renderAddOns = function () {
  if (this.add_ons == null) {
    return ""
  } else {
    var add_ons = []
    this.add_ons.forEach(function(add_on) {
      add_ons.push(add_on["name"])
    })
    return add_ons.join(", ")
  }
}

Bottleshot.prototype.is_screenprinted = function () {
  if (this.screenprinted == true) {
      return "Yes"
    } else {
      return "No"
    }
}

Bottleshot.prototype.appendBottleInfoToDOM = function () {
  $(".bottleshot-name").text(this.fullname)
  $(".bottle-shape").text(this.renderBottleShape())
  $(".glass-color").text(this.renderGlassColor())
  $(".wine-color").text(this.renderWineColor())
  $(".capsule").text(this.renderCapsule())
  $(".paperstock").text(this.renderPaperstock())
  $(".label-finish").text(this.renderLabelFinish())
  $(".screenprinted").text(this.is_screenprinted())
  $(".add-on").text(this.renderAddOns())
}

Bottleshot.prototype.appendToDOM = function(element, userId) {
  var li = `<li class="bottleshot-info"><span><a class="bottleshot-varietal" href="/users/${userId}/bottleshots/${this.id}">${this.fullname}</a></span> - <span>${this.status}</span></li>`
  element.append(li)
}
