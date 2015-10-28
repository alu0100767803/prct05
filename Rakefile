task :default => :all


desc "Pruebas unitarias"
task :all do 
    sh "ruby -I. test/tc_fracciones.rb"
end

desc "Ejecutar solo las pruebas de la suma"
task :suma do
    sh "ruby -I. test/tc_fracciones.rb -n /suma/"
end

desc "Ejecutar solo las pruebas de la resta"
task :resta do
    sh "ruby -I. test/tc_fracciones.rb -n /resta/"
end

desc "Ejecutar solo las pruebas de la multiplicacion"
task :multiplicacion do
    sh "ruby -I. test/tc_fracciones.rb -n /multiplicacion/"
end

desc "Ejecutar solo las pruebas de la division"
task :division do 
    sh "ruby -I. test/tc_fracciones.rb -n /division/"
end

desc "Ejecutar solo las pruebas del resto"
task :resto do
    sh "ruby -I. test/tc_fracciones.rb -n /resto/"
end

desc "Prueba 1"
task :p1 do
    sh "ruby -I. test/tc_fracc1.rb -n /prueba/"
end