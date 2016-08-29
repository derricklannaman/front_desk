class CreateMedicalHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :medical_histories do |t|
      t.references :users, index: true, foreign_key: true

      t.boolean :add, null: false, default: false
      t.boolean :abnormal_pap_smear, null: false, default: false
      t.boolean :alcoholism, null: false, default: false
      t.boolean :allergies, null: false, default: false
      t.boolean :anemia, null: false, default: false
      t.boolean :anxiety, null: false, default: false
      t.boolean :arthritis, null: false, default: false
      t.boolean :asthma, null: false, default: false
      t.boolean :back_pain_chronic, null: false, default: false
      t.boolean :breast_cancer, null: false, default: false
      t.boolean :colon_polyp, null: false, default: false
      t.boolean :depression_current, null: false, default: false
      t.boolean :depression_past, null: false, default: false
      t.boolean :diabetes_type_1, null: false, default: false
      t.boolean :diabetes_type_2, null: false, default: false
      t.boolean :diabetes_gestational, null: false, default: false
      t.boolean :diverticular_disease, null: false, default: false
      t.boolean :eczema, null: false, default: false
      t.boolean :endometriosis, null: false, default: false
      t.boolean :erectile_dysfunction, null: false, default: false
      t.boolean :fibromyalgia, null: false, default: false
      t.boolean :genital_herpes, null: false, default: false
      t.boolean :heart_desease, null: false, default: false
      t.boolean :glaucoma, null: false, default: false
      t.boolean :hemorrhoids, null: false, default: false
      t.boolean :high_cholesterol, null: false, default: false
      t.boolean :high_blood_pressure, null: false, default: false
      t.boolean :irritable_bowel, null: false, default: false
      t.boolean :kidney_stones, null: false, default: false
      t.boolean :low_thyroid, null: false, default: false
      t.boolean :migraine, null: false, default: false
      t.boolean :obesity, null: false, default: false
      t.boolean :osteoporosis, null: false, default: false
      t.boolean :osteopenia, null: false, default: false
      t.boolean :postmenopausal, null: false, default: false
      t.boolean :prostate_enlargement, null: false, default: false
      t.boolean :reflux, null: false, default: false
      t.boolean :rheumatoid_arthritis, null: false, default: false
      t.boolean :seizure_disorder, null: false, default: false
      t.boolean :sleep_apnea, null: false, default: false
      t.boolean :stroke, null: false, default: false
      t.boolean :tobacco_use, null: false, default: false
      t.boolean :appendix, null: false, default: false
      t.boolean :ear_tubes, null: false, default: false
      t.boolean :gall_bladder, null: false, default: false
      t.boolean :heart_bypass, null: false, default: false
      t.boolean :hernia_repair, null: false, default: false
      t.boolean :knee_acl, null: false, default: false
      t.boolean :knee_other, null: false, default: false
      t.boolean :lumbar_back, null: false, default: false
      t.boolean :neck_c_spine, null: false, default: false
      t.boolean :shoulder, null: false, default: false
      t.boolean :tonsils, null: false, default: false
      t.boolean :breast_augmentation, null: false, default: false
      t.boolean :c_section, null: false, default: false
      t.boolean :hysterectomy, null: false, default: false
      t.boolean :tubal_ligation, null: false, default: false

      t.timestamps
    end
  end
end
