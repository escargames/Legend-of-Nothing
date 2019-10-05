
function has_flag(x,y,flag)
    local bg = mget(x, y)
    return fget(bg, flag)
end

function block_walk(x,y,w,h)
    if w or h then
        return block_walk(x-w/2,y-h/2) or block_walk(x+w/2,y-h/2)
            or block_walk(x-w/2,y+h/2) or block_walk(x+w/2,y+h/2)
    end
    return has_flag(x,y, 4) -- water
end

function block_fly(x,y,w,h)
    if w or h then
        return block_fly(x-w/2,y-h/2) or block_fly(x+w/2,y-h/2)
            or block_fly(x-w/2,y+h/2) or block_fly(x+w/2,y+h/2)
    end
    return false
end

