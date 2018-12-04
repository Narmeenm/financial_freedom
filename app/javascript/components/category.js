function category_toggle() {

  const buttons = document.querySelectorAll('.button-listener');
  buttons.forEach((element)=> {
    element.addEventListener("click", ()=> {
    let content =  element.querySelector('.dropdown-content');
    content.classList.toggle('hidden');
   });
  })
}


export { category_toggle }

