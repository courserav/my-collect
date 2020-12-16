def my_collect(array)
    i = 0
    collect_array = []

    while i < array.length
        collect_array << yield(array[i])
        i += 1
    end

    return collect_array
end


my_collect(["Tim Jones", "Tom Smith", "Jim Campagno"]) do |name|
    name.split(" ").first
end

my_collect(["ruby", "js", "python"]) do |language|
    language.upcase
end
