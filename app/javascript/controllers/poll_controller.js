import ContentLoader from 'stimulus-content-loader'

export default class extends ContentLoader {
  connect() {
    super.connect()
    console.log('Do what you want here.')
  }
}
