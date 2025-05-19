hs.loadSpoon("Vifari")

spoon.Vifari:start({
    scrollStep = 200,
    mapping = {
        ["H"] = { { "cmd", "shift" }, "[" },
        ["L"] = { { "cmd", "shift" }, "]" },
        ["J"] = "cmdScrollHalfPageDown",
        ["K"] = "cmdScrollHalfPageUp",
    },
})
