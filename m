Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7861F5FF68
	for <lists+linux-mediatek@lfdr.de>; Fri,  5 Jul 2019 04:06:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YQflMOWPapyg3shtEdyjJcLQxNe3uYmK3NfEaoSMt1Y=; b=Igh8qKXRge0PwL
	PHUosJHhkZihRbBBSuz8VP3nhvkLDgVrRn5rEiU+7wUG1nXgWAUFuTnWHgF+0nbCxkqNPyStfy+2t
	7kshAY/i7E6+ebuXbY59DWE/OJ1p148TFuNBtEYPaCe2mAuNqrU4V3AABhUGZgqZWShSlJ+dd+eqn
	+OxeAn5jkG+IM5lWX7/leLuVe2IKPOhxYHH5sHV0DJ4RDCX13/IZScsfRIJES7VOklioe4pk1zDvI
	LpDppY5nBAzc+WacXHER0PQENpT74zOAHMUfTBJuKNnjlkipCnvgH4JtAc/dTzviC+Nrja5xADLtG
	vQaACCi2fsubkb2W3pMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjDcL-0003RO-P3; Fri, 05 Jul 2019 02:06:29 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjDcI-0003Qq-AJ
 for linux-mediatek@lists.infradead.org; Fri, 05 Jul 2019 02:06:28 +0000
X-UUID: bed739e85ce9437eafef3907d3de97da-20190704
X-UUID: bed739e85ce9437eafef3907d3de97da-20190704
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <miles.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1940558900; Thu, 04 Jul 2019 18:06:14 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 4 Jul 2019 19:06:12 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 5 Jul 2019 10:06:04 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 5 Jul 2019 10:06:04 +0800
Message-ID: <1562292364.23476.4.camel@mtkswgap22>
Subject: Re: [PATCH v2] checkpatch: add several Kconfig default value tests
From: Miles Chen <miles.chen@mediatek.com>
To: Joe Perches <joe@perches.com>
Date: Fri, 5 Jul 2019 10:06:04 +0800
In-Reply-To: <53b2351f14f246b57871226f7cf45b9800e264a8.camel@perches.com>
References: <20190704094024.16162-1-miles.chen@mediatek.com>
 <53b2351f14f246b57871226f7cf45b9800e264a8.camel@perches.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: FDE15EDAF12E67EF2B3A8083FFDFD53EA54C2081AFEDDA8A13D8C58C1C29F02C2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_190626_364233_7D7B447C 
X-CRM114-Status: GOOD (  25.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: Andy Whitcroft <apw@canonical.com>, Yingjoe
 Chen <yingjoe.chen@mediatek.com>, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, wsd_upstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, 2019-07-04 at 11:49 -0700, Joe Perches wrote:
> On Thu, 2019-07-04 at 17:40 +0800, Miles Chen wrote:
> > This change adds 3 Kconfig default value tests:
> []
> > diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
> []
> > @@ -3005,6 +3005,27 @@ sub process {
> >  			     "Use of boolean is deprecated, please use bool instead.\n" . $herecurr);
> >  		}
> >  
> > +# discourage redundant 'default n'
> > +		if ($realfile =~ /Kconfig/ &&
> > +		    $line =~ /^\+\s*default n$/) {
> > +			WARN("DEFAULT_VALUE_STYLE",
> > +			     "'default n' is the default value, no need to write it explicitly.\n" . $herecurr);
> > +		}
> > +
> > +# discourage quote: use default [ynm], not default "[ynm]"
> > +		if ($realfile =~ /Kconfig/ &&
> > +		    $rawline =~ /^\+\s*default\s*"[ynm]"/) {
> > +			WARN("DEFAULT_VALUE_STYLE",
> > +			     "Use default [ynm] instead of default \"[ynm]\"\n" . $herecurr);
> > +		}
> > +
> > +# discourage default \!?EXPERT
> > +		if ($realfile =~ /Kconfig/ &&
> > +		    $line =~ /^\+\s*default \!?EXPERT/) {
> > +			WARN("DEFAULT_VALUE_STYLE",
> > +			     "Avoid default turn on kernel configs by default !?EXPERT\n" . $herecurr);
> > +		}
> > +
> 
> I'd prefer to create a block for all the Kconfig file tests and
> avoid multiply determining if the filename includes Kconfig so
> the script runs a bit faster.
> 

Thanks for your comments.
yes, the script runs faster this way.

> Also some trivial changes to the added tests with added --fix
> capability.  Something like:

Thanks for posting the patch, I'll verify it and post as patch v3.

> ---
>  scripts/checkpatch.pl | 139 ++++++++++++++++++++++++++++++--------------------
>  1 file changed, 85 insertions(+), 54 deletions(-)
> 
> diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
> index 6cb99ec62000..4780149a8d30 100755
> --- a/scripts/checkpatch.pl
> +++ b/scripts/checkpatch.pl
> @@ -2934,60 +2934,98 @@ sub process {
>  				      "Do not include the paragraph about writing to the Free Software Foundation's mailing address from the sample GPL notice. The FSF has changed addresses in the past, and may do so again. Linux already includes a copy of the GPL.\n" . $herevet)
>  		}
>  
> -# check for Kconfig help text having a real description
> -# Only applies when adding the entry originally, after that we do not have
> -# sufficient context to determine whether it is indeed long enough.
> -		if ($realfile =~ /Kconfig/ &&
> -		    # 'choice' is usually the last thing on the line (though
> -		    # Kconfig supports named choices), so use a word boundary
> -		    # (\b) rather than a whitespace character (\s)
> -		    $line =~ /^\+\s*(?:config|menuconfig|choice)\b/) {
> -			my $length = 0;
> -			my $cnt = $realcnt;
> -			my $ln = $linenr + 1;
> -			my $f;
> -			my $is_start = 0;
> -			my $is_end = 0;
> -			for (; $cnt > 0 && defined $lines[$ln - 1]; $ln++) {
> -				$f = $lines[$ln - 1];
> -				$cnt-- if ($lines[$ln - 1] !~ /^-/);
> -				$is_end = $lines[$ln - 1] =~ /^\+/;
> -
> -				next if ($f =~ /^-/);
> -				last if (!$file && $f =~ /^\@\@/);
> -
> -				if ($lines[$ln - 1] =~ /^\+\s*(?:bool|tristate|prompt)\s*["']/) {
> -					$is_start = 1;
> -				} elsif ($lines[$ln - 1] =~ /^\+\s*(?:help|---help---)\s*$/) {
> -					if ($lines[$ln - 1] =~ "---help---") {
> -						WARN("CONFIG_DESCRIPTION",
> -						     "prefer 'help' over '---help---' for new help texts\n" . $herecurr);
> +# Kconfig tests
> +		if ($realfile =~ /Kconfig/) {
> +			# check for Kconfig help text having a real description
> +			# Only applies when adding the entry originally, after
> +			# that we do not have sufficient context to determine
> +			# whether it is indeed long enough.
> +			# 'choice' is usually the last thing on the line (though
> +			# Kconfig supports named choices), so use a word
> +			# boundary (\b) rather than a whitespace character (\s)
> +			if ($line =~ /^\+\s*(?:config|menuconfig|choice)\b/) {
> +				my $length = 0;
> +				my $cnt = $realcnt;
> +				my $ln = $linenr + 1;
> +				my $f;
> +				my $is_start = 0;
> +				my $is_end = 0;
> +				for (; $cnt > 0 && defined $lines[$ln - 1]; $ln++) {
> +					$f = $lines[$ln - 1];
> +					$cnt-- if ($lines[$ln - 1] !~ /^-/);
> +					$is_end = $lines[$ln - 1] =~ /^\+/;
> +
> +					next if ($f =~ /^-/);
> +					last if (!$file && $f =~ /^\@\@/);
> +
> +					if ($lines[$ln - 1] =~ /^\+\s*(?:bool|tristate|prompt)\s*["']/) {
> +						$is_start = 1;
> +					} elsif ($lines[$ln - 1] =~ /^\+\s*(?:help|---help---)\s*$/) {
> +						if ($lines[$ln - 1] =~ "---help---") {
> +							WARN("CONFIG_DESCRIPTION",
> +							     "prefer 'help' over '---help---' for new help texts\n" . $herecurr);
> +						}
> +						$length = -1;
> +					}
> +
> +					$f =~ s/^.//;
> +					$f =~ s/#.*//;
> +					$f =~ s/^\s+//;
> +					next if ($f =~ /^$/);
> +
> +					# This only checks context lines in the patch
> +					# and so hopefully shouldn't trigger false
> +					# positives, even though some of these are
> +					# common words in help texts
> +					if ($f =~ /^\s*(?:config|menuconfig|choice|endchoice|
> +							   if|endif|menu|endmenu|source)\b/x) {
> +						$is_end = 1;
> +						last;
>  					}
> -					$length = -1;
> +					$length++;
> +				}
> +				if ($is_start && $is_end && $length < $min_conf_desc_length) {
> +					WARN("CONFIG_DESCRIPTION",
> +					     "please write a paragraph that describes the config symbol fully\n" . $herecurr);
>  				}
> +				#print "is_start<$is_start> is_end<$is_end> length<$length>\n";
> +			}
>  
> -				$f =~ s/^.//;
> -				$f =~ s/#.*//;
> -				$f =~ s/^\s+//;
> -				next if ($f =~ /^$/);
> -
> -				# This only checks context lines in the patch
> -				# and so hopefully shouldn't trigger false
> -				# positives, even though some of these are
> -				# common words in help texts
> -				if ($f =~ /^\s*(?:config|menuconfig|choice|endchoice|
> -						  if|endif|menu|endmenu|source)\b/x) {
> -					$is_end = 1;
> -					last;
> +# discourage the use of boolean for type definition attributes
> +			if ($line =~ /^\+\s*\bboolean\b/) {
> +				if (WARN("CONFIG_TYPE_BOOLEAN",
> +					 "Use of boolean is deprecated, please use bool instead\n" . $herecurr) &&
> +				    $fix) {
> +					$fixed[$fixlinenr] =~ s/\bboolean\b/bool/;
> +				}
> +			}
> +
> +# Kconfig: discourage redundant 'default n'
> +			if ($line =~ /^\+\s*default\s+n$/) {
> +				if (WARN("CONFIG_DEFAULT_VALUE_STYLE",
> +					 "'default n' is the default value, no need to write it explicitly\n" . $herecurr) &&
> +				    $fix) {
> +					fix_delete_line($fixlinenr, $rawline);
>  				}
> -				$length++;
>  			}
> -			if ($is_start && $is_end && $length < $min_conf_desc_length) {
> -				WARN("CONFIG_DESCRIPTION",
> -				     "please write a paragraph that describes the config symbol fully\n" . $herecurr);
> +
> +# Kconfig: discourage quoted defaults: use default [ynm], not default "[ynm]"
> +			if ($rawline =~ /^\+\s*default\s+"([ynm])"/) {
> +				if (WARN("CONFIG_DEFAULT_VALUE_STYLE",
> +					 "Use 'default $1' not 'default \"$1\"'\n" . $herecurr) &&
> +				    $fix) {
> +					$fixed[$fixlinenr] =~ s/\b(default\s+)"(.)"/$1$2/;
> +				}
> +			}
> +
> +# Kconfig: discourage using default EXPERT or !EXPERT
> +			if ($line =~ /^\+\s*default\s+\!?\s*EXPERT\b/) {
> +				WARN("CONFIG_DEFAULT_VALUE_STYLE",
> +				     "Avoid using default EXPERT\n" . $herecurr);
>  			}
> -			#print "is_start<$is_start> is_end<$is_end> length<$length>\n";
>  		}
> +# End of Kconfig tests
> +
>  
>  # check for MAINTAINERS entries that don't have the right form
>  		if ($realfile =~ /^MAINTAINERS$/ &&
> @@ -3000,13 +3038,6 @@ sub process {
>  			}
>  		}
>  
> -# discourage the use of boolean for type definition attributes of Kconfig options
> -		if ($realfile =~ /Kconfig/ &&
> -		    $line =~ /^\+\s*\bboolean\b/) {
> -			WARN("CONFIG_TYPE_BOOLEAN",
> -			     "Use of boolean is deprecated, please use bool instead.\n" . $herecurr);
> -		}
> -
>  		if (($realfile =~ /Makefile.*/ || $realfile =~ /Kbuild.*/) &&
>  		    ($line =~ /\+(EXTRA_[A-Z]+FLAGS).*/)) {
>  			my $flag = $1;
> 
> 



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
