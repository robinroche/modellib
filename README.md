# modellib
A library of models for microgrid applications: renewables, storage, etc.

## Available models
* PV model1: generic, power
* PV model2: generic, voltage-current
* Fuel cell model1: PEM, voltage-current
* Wind turbine model1: generic, power

## Citing this repository
A paper may be written in the future, and will be referenced here. In the mean time, please cite this repository.

## Contributors
* Robin Roche, UBFC/UTBM, FEMTO-ST/FCLAB

## Instructions for contributing
Please follow the rules below when contributing. All contributions are welcome.

### Modeled components
* Energy sources: diesel generator, microturbine, PV panels, wind turbine, hydro, ...
* Energy storage units: battery, supercapacitor, flywheel, hydrogen (electrolyzer, tank and fuel cell), ...
* Other types: load, protection relay, power line, static converter (inverter, rectifier, DC/DC, etc.), ...
* Whatever you think could be useful

### Language
Any language can be used. The prefered languages are MATLAB, Simulink and Python, but any other may be used. Just add a new folder with the name of the language whenever needed.

### Documentation
For each model, please provide:
* The names of the contributors and their affiliation
* A list of used bibliographical references, preferably with their DOI
* A description of the inputs, outputs and parameters of the model
* An explanation of how the model works
* The type of model: power, voltage/current
* The model characteristics: with or without ageing, the precise type of technology (e.g., electrolyzer (alcaline, PEM, etc.) or wind turbine (I, II, etc.) type)

### Files
The following files should be provided:
* Model of unit components (solar cell, battery cell, etc.)
* Model of the system, using the unit model (solar module, battery pack, etc.)
* Validation of the model, with the corresponding input data
* File dedicated to defining the parameters for a given real system, with a reference to the datasheet

More files can be added whenever relevant.

###  Validation of the models
All models are expected to be validated:
* By plotting characteristic curves (e.g., the voltage/current curves for several solar radiation levels for PV panels) and comparing them with datasheets
* By plotting the output of the model for a given input (e.g., the output of a PV panel given a certain solar radiation profile)

### Repository structure
A hierarchical structure is used:
* Level 1: folder with component name (e.g., PV, wind turbine)
* Level 2: folder with used language (e.g., Python, Matlab)
* Level 3: folder with model number, starting with "model_1"
* Level 4: files of the model

## Other useful libraries
* https://github.com/pvlib/pvlib-python
* https://github.com/wind-python/windpowerlib
