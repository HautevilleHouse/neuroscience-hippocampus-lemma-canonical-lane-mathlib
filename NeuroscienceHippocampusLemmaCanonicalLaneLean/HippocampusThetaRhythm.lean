import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceHippocampusLemmaCanonicalLaneLean

structure HippocampusThetaRhythmPackage where
  thetaOscillatorModel : Prop
  frequencyRange : Prop
  phasePrecession : Prop
  pacemakerInput : Prop
  septalDriving : Prop

structure HippocampusThetaRhythmEvidence (H : HippocampusThetaRhythmPackage) where
  thetaOscillatorModelClosed : H.thetaOscillatorModel
  frequencyRangeClosed : H.frequencyRange
  phasePrecessionClosed : H.phasePrecession
  pacemakerInputClosed : H.pacemakerInput
  septalDrivingClosed : H.septalDriving

def HippocampusThetaRhythmClosed (H : HippocampusThetaRhythmPackage) : Prop :=
  H.thetaOscillatorModel ∧ H.frequencyRange ∧ H.phasePrecession ∧
  H.pacemakerInput ∧ H.septalDriving

theorem hippocampus_theta_rhythm_closed_from_evidence
    (H : HippocampusThetaRhythmPackage) (E : HippocampusThetaRhythmEvidence H) :
    HippocampusThetaRhythmClosed H := by
  exact And.intro E.thetaOscillatorModelClosed
    (And.intro E.frequencyRangeClosed
      (And.intro E.phasePrecessionClosed
        (And.intro E.pacemakerInputClosed E.septalDrivingClosed)))

end NeuroscienceHippocampusLemmaCanonicalLaneLean
end HautevilleHouse