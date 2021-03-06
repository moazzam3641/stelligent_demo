deliveryPipelineView('Continuous Delivery Pipeline') {
    pipelineInstances(2)
    columns(1)
    updateInterval(5)
    enableManualTriggers()
    pipelines {
        component('Image Selector Application', 'ISA-poll-version-control')
    }
}

listView('Image Selector Application') {
    description('Image Selector Application')
    jobs {
        regex('ISA.+')
    }
    columns {
        status()
        weather()
        name()
        lastSuccess()
        lastFailure()
        lastDuration()
        buildButton()
    }
}

listView('ops') {
    description('ops')
    jobs {
        name('SeedXML')
    }
    columns {
        status()
        weather()
        name()
        lastSuccess()
        lastFailure()
        lastDuration()
        buildButton()
    }
}



