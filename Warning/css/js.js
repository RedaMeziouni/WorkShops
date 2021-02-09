var section = document.querySelectorAll('section');
document.querySelectorAll('section').forEach(set => {
    set.addEventListener('click', function(){
        this.classList.toggle('hide');
    })
});