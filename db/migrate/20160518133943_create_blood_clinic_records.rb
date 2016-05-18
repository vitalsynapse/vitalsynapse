class CreateBloodClinicRecords < ActiveRecord::Migration
  def change
    create_table :blood_clinic_records do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.date :report_date
      t.date :specimen_collected
      t.text :clinic_name
      t.float :haemoglobin
      t.float :rbc
      t.float :mcv
      t.float :hct
      t.float :mch
      t.float :mchc
      t.float :rdw_cv
      t.float :neutrophils
      t.float :lymphocytes
      t.float :monocytes
      t.float :eosinophills
      t.float :basophils
      t.float :platelet_count
      t.float :esr
      t.text :blood_film_comment
      t.float :sodium
      t.float :pottasium
      t.float :chloride
      t.float :urea
      t.float :uric_acid
      t.float :creatinine
      t.float :egfe
      t.text :urine_note
      t.float :calcium
      t.float :corrected_calcium
      t.float :phosphate
      t.float :total_protein
      t.float :albumin
      t.float :globulin
      t.float :bilirubin
      t.float :alkaline_phosphate
      t.float :ggt
      t.float :aspartate_transferase
      t.float :alanine_transaminase
      t.float :total_cholestrol
      t.float :triglycerides
      t.float :hdl_cholestrol
      t.float :ldl_cholestrol
      t.float :total_cholestrol_hdl
      t.float :glucose
      t.float :tsh
      t.float :ft4
      t.float :ft3
      t.text :rheumatoid_factor
      t.string :urine_appearance
      t.string :urine_colour
      t.float :specific_gravity
      t.text :leucocytes
      t.text :nitrite
      t.text :protein
      t.text :urine_glucose
      t.text :ketones
      t.text :urobilinogen
      t.text :bilirubin
      t.text :blood
      t.text :epithelial_cell_count
      t.text :bacteria
      t.text :others

      t.timestamps null: false
    end
  end
end
