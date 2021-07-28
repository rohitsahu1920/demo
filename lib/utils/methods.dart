
bool isFormValid(key) {
  final form = key.currentState;
  if (form.validate()) {
    form.save();
    return true;
  }
  return false;
}
