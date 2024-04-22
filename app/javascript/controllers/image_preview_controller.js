import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["input", "preview"]

  connect() {
    if (this.hasPreviewTarget && this.inputTarget.files.length > 0) {
      this.readAndPreviewImage(this.inputTarget.files[0])
    } else if (this.hasPreviewTarget && this.inputTarget.dataset.imageUrl) {
      this.previewTarget.src = this.inputTarget.dataset.imageUrl
      this.previewTarget.style.display = 'block'
    }
  }

  dragover(event) {
    event.preventDefault()
    event.target.classList.add('bg-gray-300')
  }

  dragleave(event) {
    event.preventDefault()
    event.target.classList.remove('bg-gray-300')
  }

  dropImages(event) {
    event.preventDefault()
    event.target.classList.remove('bg-gray-300')
    const files = event.dataTransfer.files
    if (files.length > 0) {
      this.readAndPreviewImage(files[0])
      this.setInputFile(files[0])
    }
  }

  readAndPreviewImage(file) {
    if (file && file.type.startsWith('image/')) {
      const reader = new FileReader()
      reader.onload = (event) => {
        this.previewTarget.src = event.target.result
        this.previewTarget.style.display = 'block'
      }
      reader.readAsDataURL(file)
    }
  }

  setInputFile(file) {
    const dataTransfer = new DataTransfer()
    dataTransfer.items.add(file)
    this.inputTarget.files = dataTransfer.files
  }
}
