import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceHippocampusLemmaCanonicalLaneLean

structure MemoryConsolidationSynapticScaling where
  learningRate : ℝ
  synapticScalingFunction : ℝ → ℝ
  consolidationWindow : ℝ × ℝ
  proteinSynthesisDependence : Prop
  synapticTaggingCapture : Prop
  heterosynapticPlasticity : Prop
  spineMorphologyChanges : Prop
  longTermMemoryStorage : Prop

structure MemoryConsolidationSynapticScalingEvidence (M : MemoryConsolidationSynapticScaling) where
  proteinSynthesisDependenceClosed : M.proteinSynthesisDependence
  synapticTaggingCaptureClosed : M.synapticTaggingCapture
  heterosynapticPlasticityClosed : M.heterosynapticPlasticity
  spineMorphologyChangesClosed : M.spineMorphologyChanges
  longTermMemoryStorageClosed : M.longTermMemoryStorage

def MemoryConsolidationSynapticScalingClosed (M : MemoryConsolidationSynapticScaling) : Prop :=
  M.proteinSynthesisDependence ∧ M.synapticTaggingCapture ∧
  M.heterosynapticPlasticity ∧ M.spineMorphologyChanges ∧ M.longTermMemoryStorage

theorem memory_consolidation_synaptic_scaling_closed_from_evidence
    (M : MemoryConsolidationSynapticScaling) (E : MemoryConsolidationSynapticScalingEvidence M) :
    MemoryConsolidationSynapticScalingClosed M :=
  And.intro E.proteinSynthesisDependenceClosed
    (And.intro E.synapticTaggingCaptureClosed
      (And.intro E.heterosynapticPlasticityClosed
        (And.intro E.spineMorphologyChangesClosed
          E.longTermMemoryStorageClosed)))

end NeuroscienceHippocampusLemmaCanonicalLaneLean
end HautevilleHouse