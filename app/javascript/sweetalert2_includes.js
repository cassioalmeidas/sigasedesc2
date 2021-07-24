import Rails from "@rails/ujs"
import Swal from 'sweetalert2/dist/sweetalert2.all'

const confirmed = (element, result) => {
  if (result.value) {
    element.removeAttribute('data-confirm-swal')
    element.click()
  }
}

const showConfirmationDialog = (element) => {
  const message = element.getAttribute('data-confirm-swal')
  const text = element.getAttribute('data-text')

  Swal.fire({
    title: message || 'Você tem certeza?',
    text: text || '',
    icon: 'warning',
    showCancelButton: true,
    confirmButtonText: 'Confirmar',
    cancelButtonText: 'Cancelar',
  }).then((result) => {
    if (result.isConfirmed) {
      confirmed(element, result)
    }
  })
}

const allowAction = (element) => {
  if (element.getAttribute('data-confirm-swal') === null) {
    return true
  }

  showConfirmationDialog(element)
  return false
}

function handleConfirm(element) {
  if (!allowAction(this)) {
    Rails.stopEverything(element)
  }
}

Rails.delegate(document, 'a[data-confirm-swal]', 'click', handleConfirm)
