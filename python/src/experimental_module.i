// SWIG file experimental_module.i

%module(package="openturns", docstring="Experimental features.") experimental
#pragma SWIG nowarn=302,509
//%feature("autodoc","1");

%{
#include "openturns/OTconfig.hxx"
#include "openturns/OTBase.hxx"
#include "openturns/OTModel.hxx"
#include "openturns/OTDistribution.hxx"
#include "openturns/OTWeightedExperiments.hxx"
#include "openturns/OTOrthogonalBasis.hxx"
#include "openturns/OTMetaModel.hxx"
#include "openturns/OTSimulation.hxx"
%}

%include typemaps.i
%include OTtypes.i
%include OTexceptions.i
%include std_vector.i

/* Base/Type */
%include BaseTypCollection.i
%import typ_module.i

%include BaseFuncCollection.i
%import base_module.i

/* Base/Geom */
%include BoundaryMesher.i

/* Base/Stat */
%include LatentVariableModel.i

/* Uncertainty/Model */
/* Uncertainty/Distribution */
%import model_copula_module.i
%import dist_bundle3_module.i

/* Uncertainty/Algorithm/OrthogonalBasis */
%import orthogonalbasis_module.i
%import UncertaintyOrthogonalBasisTemplateDefs.i

/* Uncertainty/Algorithm/WeightedExperiment */
%import weightedexperiment_module.i
%include UncertaintyWeightedExperimentTemplateDefs.i

/* Uncertainty */
%import bayesian_module.i
%import metamodel_module.i
%include simulation_module.i

/* Base/Algo */
%include SimplicialCubature.i

/* Uncertainty/Algorithm/Metamodel */
%include UserDefinedMetropolisHastings.i
%include FieldFunctionalChaosResult.i
%include FieldToPointFunctionalChaosAlgorithm.i
%include FieldFunctionalChaosSobolIndices.i

/* Uncertainty/Algorithm/EventSimulation */
%include CrossEntropyResult.i
%include CrossEntropyImportanceSampling.i
%include StandardSpaceCrossEntropyImportanceSampling.i
%include PhysicalSpaceCrossEntropyImportanceSampling.i

/* Uncertainty/Distribution */
%include SmoothedUniformFactory.i
%include StudentCopula.i
%include StudentCopulaFactory.i
%include TruncatedOverMesh.i
%include PosteriorDistribution.i

// duplicate helpers
OTTypedInterfaceObjectHelper(WeightedExperiment)
OTDefaultCollectionConvertFunctions(WeightedExperiment)
OTTypedCollectionInterfaceObjectHelper(WeightedExperiment)
%include SmolyakExperiment.i
%include GeneralizedExtremeValueValidation.i
