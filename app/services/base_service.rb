class BaseService
  def self.call(*args, **kvargs)
    new(*args, **kvargs).call
  end

  def call
    raise NotImplementedError
  end
end
