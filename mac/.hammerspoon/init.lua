hs.loadSpoon("Vifari")

spoon.Vifari:start({
    scrollStep = 200,
    mapping = {
        ["u"] = { { "cmd", "shift" }, "t" },
        ["H"] = { { "cmd", "shift" }, "[" },
        ["L"] = { { "cmd", "shift" }, "]" },
        ["J"] = "cmdScrollHalfPageDown",
        ["K"] = "cmdScrollHalfPageUp",
    },
})
