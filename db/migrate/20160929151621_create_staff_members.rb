class CreateStaffMembers < ActiveRecord::Migration
  def change
    create_table :staff_members do |t|
      t.string :email, null: false                      #メールアドレス
      t.string :email_for_index, null: false            #索引用メールアドレス
      t.string :given_name, null: false                 #名
      t.string :family_name, null: false               #性
      t.string :given_name_kana, null: false            #名（カナ）
      t.string :family_name_kana, null: false          #性（カナ）
      t.string :hashedpassword                                 #パスワード
      t.date :start_date, null: false                    #開始日
      t.date :end_date, null: false                      #終了日
      t.boolean :suspended, null: false, default: false  #停止フラグ

      t.timestamps null: false
    end

    add_index :staff_members, :email_for_index, unique: true
    add_index :staff_members, [:given_name_kana, :family_name_kana]
  end
end
