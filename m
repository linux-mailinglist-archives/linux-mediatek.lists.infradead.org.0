Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D99325FFB2
	for <lists+linux-mediatek@lfdr.de>; Fri,  5 Jul 2019 05:16:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RI6GlH/edv5qnzrLiUvoItnF9whGAA64Dz9r8O4I1aE=; b=cy2XeaR9hfBug0
	zKmkI9V88LuQSj5YF20o03yk6XyVrsskIMpFnsV1Mjxx/npxuQ8WzvU6JMNESGOfsP7npfdFCYveX
	n/DJWycWOzuowWy0rO4+R8gHmyIhQzXXJzZ3UfBQxjR8aWnp0B4htwFc8MLycpmUFs2xbJx5TQeFN
	z2RSbI148e6HUsRVIBMyeapOeOung63k0NwAFd3SfFl7TUJddKf+w9mLNPn6o8zgJY8lWtAfBCsi8
	Yb/5zyyDN/34LJJKBG18+PfG96BMvvcHHx0h5FNLxfe8JupjNf0Zh6dlXydc2exgS6oKhtfrQoWp/
	ccp5+d9YeXmZPZVkSIqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjEiO-0000bJ-8T; Fri, 05 Jul 2019 03:16:48 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjEiJ-0000at-BZ
 for linux-mediatek@lists.infradead.org; Fri, 05 Jul 2019 03:16:45 +0000
X-UUID: 8a5fa8e5a8064b4e9526ec3840d1d8f7-20190704
X-UUID: 8a5fa8e5a8064b4e9526ec3840d1d8f7-20190704
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <miles.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1509915045; Thu, 04 Jul 2019 19:16:37 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 4 Jul 2019 20:16:36 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 5 Jul 2019 11:16:27 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 5 Jul 2019 11:16:27 +0800
From: Miles Chen <miles.chen@mediatek.com>
To: Andy Whitcroft <apw@canonical.com>, Joe Perches <joe@perches.com>
Subject: [PATCH v3] checkpatch: add several Kconfig default value tests
Date: Fri, 5 Jul 2019 11:16:26 +0800
Message-ID: <20190705031626.13859-1-miles.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_201643_405161_975DA8C4 
X-CRM114-Status: GOOD (  14.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Yingjoe
 Chen <yingjoe.chen@mediatek.com>, Miles Chen <miles.chen@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 wsd_upstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This change adds 3 Kconfig default value tests.

1. discourage default n cases:
e.g.,
default n

2. discourage default "[ynm]" cases:
e.g.,
arch/powerpc/Kconfig:   default "y" if PPC_POWERNV
arch/powerpc/Kconfig:   default "y" if PPC_POWERNV
arch/powerpc/Kconfig:   default "n"
drivers/auxdisplay/Kconfig:     default "n"
drivers/crypto/Kconfig: default "m"
drivers/rapidio/devices/Kconfig:        default "n"

3. discourage default EXPERT or default !EXPERT cases:
e.g.,
drivers/hid/Kconfig:    default !EXPERT

tested cases:
default m
default n if ALPHA_EV5 || ALPHA_EV56 || (ALPHA_EV4 && !ALPHA_LCA)
default y if ALPHA_QEMU
default n if PPC_POWERNV
default n
default EXPERT
default !EXPERT
default "m"
default "n"
default "y" if EXPERT
default "y" if PPC_POWERNV

test result:
WARNING: 'default n' is the default value, no need to write it explicitly
+       default n

WARNING: Avoid using default EXPERT
+       default EXPERT

WARNING: Avoid using default EXPERT
+       default !EXPERT

WARNING: Use 'default m' not 'default "m"'
+       default "m"

WARNING: Use 'default n' not 'default "n"'
+       default "n"

WARNING: Use 'default y' not 'default "y"'
+       default "y" if EXPERT

WARNING: Use 'default y' not 'default "y"'
+       default "y" if PPC_POWERNV

test --fix capability:
default n => delete line
default "m" => default m
default "n" => default n
default "y" if EXPERT => default y if EXPERT
default "y" if PPC_POWERNV => default y if PPC_POWERNV
default !EXPERT => no change
default EXPERT => no change

Change since v1:
discourage default n$
discourage default "[ynm]"
discourage default \!?EXPERT

Change since v2:
(Joe has provided the whole patch and I just post it)
test Kconfig in a single block
print precise message such as 'default "m"', not 'default "[ynm]"'
provide --fix capability

Cc: Joe Perches <joe@perches.com>
Cc: Yingjoe Chen <yingjoe.chen@mediatek.com>
Signed-off-by: Miles Chen <miles.chen@mediatek.com>
---
 scripts/checkpatch.pl | 139 ++++++++++++++++++++++++++----------------
 1 file changed, 85 insertions(+), 54 deletions(-)

diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index 342c7c781ba5..94799f23339c 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -2932,60 +2932,98 @@ sub process {
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
@@ -2998,13 +3036,6 @@ sub process {
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
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
