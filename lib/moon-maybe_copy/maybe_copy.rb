class Object
  # Attempts to duplicate the object, if the dup fails with a TypeError, self
  # is returned instead.
  #
  # @return [Object, self]
  def maybe_dup
    dup
  rescue TypeError
    self
  end

  # Attempts to clone the object, if the dup fails with a TypeError, self
  # is returned instead.
  # Copied objects will preserve their frozen state.
  #
  # @return [Object, self]
  def maybe_clone
    clone
  rescue TypeError
    self
  end
end
