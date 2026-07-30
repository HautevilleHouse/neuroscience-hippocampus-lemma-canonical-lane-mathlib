import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceHippocampusLemmaCanonicalLaneLean

structure ConnectomicsSynapticOrganizationPackage where
  neuronTypes : Type
  synapticConnections : Type
  connectionMatrix : Type
  networkTopology : Prop
  synapticDensity : Prop
  connectionSpecificity : Prop
  plasticProperties : Prop

structure ConnectomicsSynapticOrganizationEvidence (C : ConnectomicsSynapticOrganizationPackage) where
  networkTopologyClosed : C.networkTopology
  synapticDensityClosed : C.synapticDensity
  connectionSpecificityClosed : C.connectionSpecificity
  plasticPropertiesClosed : C.plasticProperties

def ConnectomicsSynapticOrganizationClosed (C : ConnectomicsSynapticOrganizationPackage) : Prop :=
  C.networkTopology ∧ C.synapticDensity ∧ C.connectionSpecificity ∧ C.plasticProperties

theorem connectomics_synaptic_organization_closed_from_evidence
    (C : ConnectomicsSynapticOrganizationPackage) (E : ConnectomicsSynapticOrganizationEvidence C) :
    ConnectomicsSynapticOrganizationClosed C := by
  exact And.intro E.networkTopologyClosed
    (And.intro E.synapticDensityClosed
      (And.intro E.connectionSpecificityClosed E.plasticPropertiesClosed))

end NeuroscienceHippocampusLemmaCanonicalLaneLean
end HautevilleHouse