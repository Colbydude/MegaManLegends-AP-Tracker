function buildReverseLookup(mapping)
    local reverse = {}
    for key, values in pairs(mapping) do
        for _, value in ipairs(values) do
            reverse[value] = key
        end
    end
    return reverse
end
