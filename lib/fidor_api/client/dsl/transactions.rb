module FidorApi
  class Client
    module DSL
      module Transactions
        def transactions(options = {})
          path = options['account_no'] ? "accounts/#{options['account_no']}/transactions" : 'transactions'
          options.delete('account_no')
          fetch(:collection, Model::Transaction, path, options)
        end

        def transaction(id, options = {})
          fetch(:single, Model::Transaction, "transactions/#{id}", options)
        end
      end
    end
  end
end
