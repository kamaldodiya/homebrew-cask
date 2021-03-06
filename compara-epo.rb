#Template generated on 2018-01-05 12:38:24 +0000
#Do not edit this file. Modify the relevant config and regenerate

require 'digest'

class ComparaEpo < Formula
  url 'file://'+File.expand_path(__FILE__)
  desc 'Dependencies for the ComparaEpo formula'
  sha256 Digest::SHA256.file(File.expand_path(__FILE__)).hexdigest
  version '3'

  depends_on 'ensembl/external/exonerate22'
  depends_on 'ensembl/external/hmmer'
  depends_on 'ensembl/external/blast'
  depends_on 'ensembl/ensembl/treebest'
  depends_on 'ensembl/ensembl/pecan'
  depends_on 'ensembl/ensembl/ortheus'
  depends_on 'ensembl/ensembl/gerp'
  depends_on 'ensembl/ensembl/phast'
  depends_on 'ensembl/external/kent'
  depends_on 'ensembl/ensembl/parsimonator'
  depends_on 'ensembl/ensembl/cndsrc'
  depends_on 'ensembl/ensembl/semphy'
  depends_on 'ensembl/ensembl/enredo'

  def install
    File.open('compara-epo', 'w') { |file|
      file.write '#!/bin/sh'+"\n"
      deps.each do | dep |
        f = dep.to_formula
        file.write "echo "+[f.full_name, f.version, f.prefix].join("\t")+"\n"
      end
    }
    bin.install 'compara-epo'
  end
end
    