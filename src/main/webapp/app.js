const wrapper = document.querySelector(".sliderwrap")
const itemmenu = document.querySelectorAll(".bottomitem")
const sizes = document.querySelectorAll(".size")

itemmenu.forEach((item,index)=> {
    item.addEventListener("click", ()=> {
        wrapper.style.transform=`translateX(${-100 * index}vw)`
    });
});
sizes.forEach((size,index)=> {
    size.addEventListener("click",()=> {
        sizes.forEach((size)=> {
            size.style.backgroundColor= "transparent"
            size.style.color="black"
        });
        size.style.backgroundColor= "black"
        size.style.color="white"
    });
});
