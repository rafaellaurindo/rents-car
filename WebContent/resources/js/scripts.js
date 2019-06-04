const confirmDeleteItem = () => {
	Swal.fire({
		  title: 'Você tem certeza?',
		  text: "Você deseja realmente remover este registro?",
		  type: 'warning',
		  showCancelButton: true,
		  confirmButtonColor: '#3085d6',
		  cancelButtonColor: '#d33',
		  confirmButtonText: 'Sim, remover!',
		  cancelButtonText: 'Cancelar.'
		}).then((result) => {
		  if (result.value) {
		    Swal.fire(
		      'Removido!',
		      'O registro foi removido com sucesso.',
		      'success'
		    )
		  }
	})
}