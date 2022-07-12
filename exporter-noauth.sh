#!/bin/bash
dir='/usr/local/percona/pmm2/exporters/'

cd $dir

for exporter in $(ls *exporter);do
    echo ${exporter}
    mv ${exporter} ${exporter}_org
    cat > ${exporter} << 'EOF'
#!/bin/bash
exporter_name=$(basename $0)
export HTTP_AUTH=''
$(dirname $0)/${exporter_name}_org $@
EOF
    chown pmm-agent:root ${exporter}
    chmod 0755 ${exporter}
done
