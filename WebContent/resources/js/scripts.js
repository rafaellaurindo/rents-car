$(() => {
  const confirmDeleteItem = () => {
    return Swal.fire({
      title: "Você tem certeza?",
      text: "Você deseja realmente remover este registro?",
      type: "warning",
      showCancelButton: true,
      confirmButtonColor: "#3085d6",
      cancelButtonColor: "#d33",
      confirmButtonText: "Sim, remover!",
      cancelButtonText: "Não, voltar."
    }).then(result => (result.value ? true : false));
  };

  $(".btnDelete").click(event => {
    if (!$(event.target).hasClass("confirmed")) {
      event.preventDefault();
      confirmDeleteItem().then(confirm => {
        console.log(confirm);
        if (confirm) {
          $(event.target).addClass("confirmed");
          $(event.target).trigger("click");
        }
      });

      return false;
    }

    return true;
  });
});
