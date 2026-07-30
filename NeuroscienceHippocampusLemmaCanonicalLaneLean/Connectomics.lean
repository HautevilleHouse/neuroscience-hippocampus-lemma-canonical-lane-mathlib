import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceHippocampusLemmaCanonicalLaneLean

structure ConnectomicsPackage where
  neuronGraph : Type u
  synapseList : Type v
  graphMetrics : Type w
  smallWorldProperty : Prop
  modularStructure : Prop
  hubIdentification : Prop

structure ConnectomicsEvidence (C : ConnectomicsPackage) where
  smallWorldPropertyClosed : C.smallWorldProperty
  modularStructureClosed : C.modularStructure
  hubIdentificationClosed : C.hubIdentification

def ConnectomicsClosed (C : ConnectomicsPackage) : Prop :=
  C.smallWorldProperty ∧ C.modularStructure ∧ C.hubIdentification

theorem connectomics_closed_from_evidence
    (C : ConnectomicsPackage) (E : ConnectomicsEvidence C) :
    ConnectomicsClosed C := by
  exact And.intro E.smallWorldPropertyClosed
    (And.intro E.modularStructureClosed E.hubIdentificationClosed)

end NeuroscienceHippocampusLemmaCanonicalLaneLean
end HautevilleHouse