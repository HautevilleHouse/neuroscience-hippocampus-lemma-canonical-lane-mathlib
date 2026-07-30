import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceHippocampusLemmaCanonicalLaneLean

structure HippocampusPlaceCellAssemblyPackage where
  cellAssembly : Type u
  placeField : Type v
  spatialMemory : Prop
  patternSeparation : Prop
  memoryConsolidation : Prop

structure HippocampusPlaceCellAssemblyEvidence (P : HippocampusPlaceCellAssemblyPackage) where
  spatialMemoryClosed : P.spatialMemory
  patternSeparationClosed : P.patternSeparation
  memoryConsolidationClosed : P.memoryConsolidation

def HippocampusPlaceCellAssemblyClosed (P : HippocampusPlaceCellAssemblyPackage) : Prop :=
  P.spatialMemory ∧ P.patternSeparation ∧ P.memoryConsolidation

theorem hippocampus_place_cell_assembly_closed_from_evidence (P : HippocampusPlaceCellAssemblyPackage) (E : HippocampusPlaceCellAssemblyEvidence P) :
    HippocampusPlaceCellAssemblyClosed P := by
  exact And.intro E.spatialMemoryClosed (And.intro E.patternSeparationClosed E.memoryConsolidationClosed)

end NeuroscienceHippocampusLemmaCanonicalLaneLean
end HautevilleHouse