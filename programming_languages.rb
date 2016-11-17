require 'byebug'
def languages
  {:oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}
end

def reformat_languages(languages)

  new_hash = Hash.new()

  languages.each do |style, lang|
    #debugger
    lang.each do |language, type|
      unless new_hash.include?(language)
        new_hash[language] = type
        new_hash[language][:style] = []       #declaring :style value as an array
      end
      #debugger if style == :functional && language == :javascript
      new_hash[language][:style] << style
    end
  end
  new_hash
end
#p reformat_languages(languages)
