Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C6D5FD1F
	for <lists+linux-mediatek@lfdr.de>; Thu,  4 Jul 2019 20:49:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TvEx/U0kErDd3R9VpC2EUbZEGW8vgZgvh+YyXFFunWk=; b=Jj/nSvwEi8y/UG
	4gnxooAvEJooJry9obEYvjYpVBrzUmRaApWZmQIfxrnZmJqoV2TsBA701YpGX3f2NDDGmkZ/hc6CQ
	Cp7FhfmNjcw5NfF9llyByBKH7M0M29+BxPea/1iARzlxxTznXjbUbbq6adcelRvSfIYFlJv2gKLbu
	JlEQQuBgx1BLx25y3uDOpX+nTrP10DnHaJYGmxcau+f+Ssm3maIvns+jhEyRjjZ6wZ/2lmOWXJwNm
	pCLlyG4TOSwYFXxCfASKRozkE7+qMiPL+4q5betgsHIwzTpTyp5edjHk/RQ/dQprJlFl3DBhkeuTj
	iHS9UMZEYBrlhkA92B5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj6ng-00060h-MD; Thu, 04 Jul 2019 18:49:44 +0000
Received: from smtprelay0011.hostedemail.com ([216.40.44.11]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj6nb-0005zr-R8
 for linux-mediatek@lists.infradead.org; Thu, 04 Jul 2019 18:49:41 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay04.hostedemail.com (Postfix) with ESMTP id 4BCD9180A8847;
 Thu,  4 Jul 2019 18:49:33 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::::,
 RULES_HIT:2:41:69:334:355:368:369:379:599:960:966:973:982:988:989:1042:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1535:1593:1594:1605:1730:1747:1777:1792:2196:2197:2198:2199:2200:2201:2393:2553:2559:2562:2828:2908:3138:3139:3140:3141:3142:3622:3653:3865:3866:3867:3868:3870:3871:3872:3874:4050:4119:4250:4321:4385:4605:5007:6119:7903:9592:10004:10226:10848:11026:11232:11473:11658:11914:12043:12291:12297:12438:12555:12683:12740:12760:12895:12986:13161:13229:13439:14659:21067:21080:21221:21433:21451:21627:21772:30003:30054:30062:30070:30079:30089:30090:30091,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.14.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:24,
 LUA_SUMMARY:none
X-HE-Tag: vase22_1904d7fd01141
X-Filterd-Recvd-Size: 8613
Received: from XPS-9350 (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
 (Authenticated sender: joe@perches.com)
 by omf15.hostedemail.com (Postfix) with ESMTPA;
 Thu,  4 Jul 2019 18:49:31 +0000 (UTC)
Message-ID: <53b2351f14f246b57871226f7cf45b9800e264a8.camel@perches.com>
Subject: Re: [PATCH v2] checkpatch: add several Kconfig default value tests
From: Joe Perches <joe@perches.com>
To: Miles Chen <miles.chen@mediatek.com>, Andy Whitcroft <apw@canonical.com>
Date: Thu, 04 Jul 2019 11:49:30 -0700
In-Reply-To: <20190704094024.16162-1-miles.chen@mediatek.com>
References: <20190704094024.16162-1-miles.chen@mediatek.com>
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_114940_019172_1DA51EA5 
X-CRM114-Status: GOOD (  19.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.11 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Yingjoe Chen <yingjoe.chen@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 wsd_upstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, 2019-07-04 at 17:40 +0800, Miles Chen wrote:
> This change adds 3 Kconfig default value tests:
[]
> diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
[]
> @@ -3005,6 +3005,27 @@ sub process {
>  			     "Use of boolean is deprecated, please use bool instead.\n" . $herecurr);
>  		}
>  
> +# discourage redundant 'default n'
> +		if ($realfile =~ /Kconfig/ &&
> +		    $line =~ /^\+\s*default n$/) {
> +			WARN("DEFAULT_VALUE_STYLE",
> +			     "'default n' is the default value, no need to write it explicitly.\n" . $herecurr);
> +		}
> +
> +# discourage quote: use default [ynm], not default "[ynm]"
> +		if ($realfile =~ /Kconfig/ &&
> +		    $rawline =~ /^\+\s*default\s*"[ynm]"/) {
> +			WARN("DEFAULT_VALUE_STYLE",
> +			     "Use default [ynm] instead of default \"[ynm]\"\n" . $herecurr);
> +		}
> +
> +# discourage default \!?EXPERT
> +		if ($realfile =~ /Kconfig/ &&
> +		    $line =~ /^\+\s*default \!?EXPERT/) {
> +			WARN("DEFAULT_VALUE_STYLE",
> +			     "Avoid default turn on kernel configs by default !?EXPERT\n" . $herecurr);
> +		}
> +

I'd prefer to create a block for all the Kconfig file tests and
avoid multiply determining if the filename includes Kconfig so
the script runs a bit faster.

Also some trivial changes to the added tests with added --fix
capability.  Something like:
---
 scripts/checkpatch.pl | 139 ++++++++++++++++++++++++++++++--------------------
 1 file changed, 85 insertions(+), 54 deletions(-)

diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index 6cb99ec62000..4780149a8d30 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -2934,60 +2934,98 @@ sub process {
 				      "Do not include the paragraph about writing to the Free Software Foundation's mailing address from the sample GPL notice. The FSF has changed addresses in the past, and may do so again. Linux already includes a copy of the GPL.\n" . $herevet)
 		}
 
-# check for Kconfig help text having a real description
-# Only applies when adding the entry originally, after that we do not have
-# sufficient context to determine whether it is indeed long enough.
-		if ($realfile =~ /Kconfig/ &&
-		    # 'choice' is usually the last thing on the line (though
-		    # Kconfig supports named choices), so use a word boundary
-		    # (\b) rather than a whitespace character (\s)
-		    $line =~ /^\+\s*(?:config|menuconfig|choice)\b/) {
-			my $length = 0;
-			my $cnt = $realcnt;
-			my $ln = $linenr + 1;
-			my $f;
-			my $is_start = 0;
-			my $is_end = 0;
-			for (; $cnt > 0 && defined $lines[$ln - 1]; $ln++) {
-				$f = $lines[$ln - 1];
-				$cnt-- if ($lines[$ln - 1] !~ /^-/);
-				$is_end = $lines[$ln - 1] =~ /^\+/;
-
-				next if ($f =~ /^-/);
-				last if (!$file && $f =~ /^\@\@/);
-
-				if ($lines[$ln - 1] =~ /^\+\s*(?:bool|tristate|prompt)\s*["']/) {
-					$is_start = 1;
-				} elsif ($lines[$ln - 1] =~ /^\+\s*(?:help|---help---)\s*$/) {
-					if ($lines[$ln - 1] =~ "---help---") {
-						WARN("CONFIG_DESCRIPTION",
-						     "prefer 'help' over '---help---' for new help texts\n" . $herecurr);
+# Kconfig tests
+		if ($realfile =~ /Kconfig/) {
+			# check for Kconfig help text having a real description
+			# Only applies when adding the entry originally, after
+			# that we do not have sufficient context to determine
+			# whether it is indeed long enough.
+			# 'choice' is usually the last thing on the line (though
+			# Kconfig supports named choices), so use a word
+			# boundary (\b) rather than a whitespace character (\s)
+			if ($line =~ /^\+\s*(?:config|menuconfig|choice)\b/) {
+				my $length = 0;
+				my $cnt = $realcnt;
+				my $ln = $linenr + 1;
+				my $f;
+				my $is_start = 0;
+				my $is_end = 0;
+				for (; $cnt > 0 && defined $lines[$ln - 1]; $ln++) {
+					$f = $lines[$ln - 1];
+					$cnt-- if ($lines[$ln - 1] !~ /^-/);
+					$is_end = $lines[$ln - 1] =~ /^\+/;
+
+					next if ($f =~ /^-/);
+					last if (!$file && $f =~ /^\@\@/);
+
+					if ($lines[$ln - 1] =~ /^\+\s*(?:bool|tristate|prompt)\s*["']/) {
+						$is_start = 1;
+					} elsif ($lines[$ln - 1] =~ /^\+\s*(?:help|---help---)\s*$/) {
+						if ($lines[$ln - 1] =~ "---help---") {
+							WARN("CONFIG_DESCRIPTION",
+							     "prefer 'help' over '---help---' for new help texts\n" . $herecurr);
+						}
+						$length = -1;
+					}
+
+					$f =~ s/^.//;
+					$f =~ s/#.*//;
+					$f =~ s/^\s+//;
+					next if ($f =~ /^$/);
+
+					# This only checks context lines in the patch
+					# and so hopefully shouldn't trigger false
+					# positives, even though some of these are
+					# common words in help texts
+					if ($f =~ /^\s*(?:config|menuconfig|choice|endchoice|
+							   if|endif|menu|endmenu|source)\b/x) {
+						$is_end = 1;
+						last;
 					}
-					$length = -1;
+					$length++;
+				}
+				if ($is_start && $is_end && $length < $min_conf_desc_length) {
+					WARN("CONFIG_DESCRIPTION",
+					     "please write a paragraph that describes the config symbol fully\n" . $herecurr);
 				}
+				#print "is_start<$is_start> is_end<$is_end> length<$length>\n";
+			}
 
-				$f =~ s/^.//;
-				$f =~ s/#.*//;
-				$f =~ s/^\s+//;
-				next if ($f =~ /^$/);
-
-				# This only checks context lines in the patch
-				# and so hopefully shouldn't trigger false
-				# positives, even though some of these are
-				# common words in help texts
-				if ($f =~ /^\s*(?:config|menuconfig|choice|endchoice|
-						  if|endif|menu|endmenu|source)\b/x) {
-					$is_end = 1;
-					last;
+# discourage the use of boolean for type definition attributes
+			if ($line =~ /^\+\s*\bboolean\b/) {
+				if (WARN("CONFIG_TYPE_BOOLEAN",
+					 "Use of boolean is deprecated, please use bool instead\n" . $herecurr) &&
+				    $fix) {
+					$fixed[$fixlinenr] =~ s/\bboolean\b/bool/;
+				}
+			}
+
+# Kconfig: discourage redundant 'default n'
+			if ($line =~ /^\+\s*default\s+n$/) {
+				if (WARN("CONFIG_DEFAULT_VALUE_STYLE",
+					 "'default n' is the default value, no need to write it explicitly\n" . $herecurr) &&
+				    $fix) {
+					fix_delete_line($fixlinenr, $rawline);
 				}
-				$length++;
 			}
-			if ($is_start && $is_end && $length < $min_conf_desc_length) {
-				WARN("CONFIG_DESCRIPTION",
-				     "please write a paragraph that describes the config symbol fully\n" . $herecurr);
+
+# Kconfig: discourage quoted defaults: use default [ynm], not default "[ynm]"
+			if ($rawline =~ /^\+\s*default\s+"([ynm])"/) {
+				if (WARN("CONFIG_DEFAULT_VALUE_STYLE",
+					 "Use 'default $1' not 'default \"$1\"'\n" . $herecurr) &&
+				    $fix) {
+					$fixed[$fixlinenr] =~ s/\b(default\s+)"(.)"/$1$2/;
+				}
+			}
+
+# Kconfig: discourage using default EXPERT or !EXPERT
+			if ($line =~ /^\+\s*default\s+\!?\s*EXPERT\b/) {
+				WARN("CONFIG_DEFAULT_VALUE_STYLE",
+				     "Avoid using default EXPERT\n" . $herecurr);
 			}
-			#print "is_start<$is_start> is_end<$is_end> length<$length>\n";
 		}
+# End of Kconfig tests
+
 
 # check for MAINTAINERS entries that don't have the right form
 		if ($realfile =~ /^MAINTAINERS$/ &&
@@ -3000,13 +3038,6 @@ sub process {
 			}
 		}
 
-# discourage the use of boolean for type definition attributes of Kconfig options
-		if ($realfile =~ /Kconfig/ &&
-		    $line =~ /^\+\s*\bboolean\b/) {
-			WARN("CONFIG_TYPE_BOOLEAN",
-			     "Use of boolean is deprecated, please use bool instead.\n" . $herecurr);
-		}
-
 		if (($realfile =~ /Makefile.*/ || $realfile =~ /Kbuild.*/) &&
 		    ($line =~ /\+(EXTRA_[A-Z]+FLAGS).*/)) {
 			my $flag = $1;



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
