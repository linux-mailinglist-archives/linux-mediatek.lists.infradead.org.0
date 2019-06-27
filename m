Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 189B758DCC
	for <lists+linux-mediatek@lfdr.de>; Fri, 28 Jun 2019 00:15:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ykT6D0TKRMMfrWsxrM9hV+XEI+CSgcBUX3sGuR9D1Q8=; b=O/Ap8zwpWIOqC0
	7qfYHW8+aYPn+bR1W4Yt60XBffFMlc1IpLgT0wgSZtlhrWDrCBe41jU01xbk5QyWzAgaX0Qj0VolB
	cgT9TcaWuQDdw84tkVHSviXnGJHVo/kNKZAHLSg0zNocqzcm8wLQCxrCaOdivNHfP+DI00tD3Mp26
	y9oadktiKY/ZTbvh1gIlKmGtenxNbdBoG6n9EF5RQB/KuHKcwUPHgrFcAc/c7ArIy4amCVZPniM4p
	fDSonRjRLkj08bb3PsPE3s0xbOIqzYcG+ag1oAZUueKJWZWPguwMyQ5nqMhNl6SJxaIZAVaBYf2lB
	oT+ow64xOz6Q4JCfiU/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgcgH-0000Op-SG; Thu, 27 Jun 2019 22:15:49 +0000
Received: from mail-pl1-x649.google.com ([2607:f8b0:4864:20::649])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgcg4-0000GV-2t
 for linux-mediatek@lists.infradead.org; Thu, 27 Jun 2019 22:15:37 +0000
Received: by mail-pl1-x649.google.com with SMTP id i3so2205077plb.8
 for <linux-mediatek@lists.infradead.org>; Thu, 27 Jun 2019 15:15:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=Symvyf/Uz9S5oKdNsFmtumlityXOKZm70HtIggCwFnk=;
 b=FUoTSiWGUAtMmT6Erkt4yAeuT0+qjeYcWls6gB3JPv82xDHkgN1hirWiFjVAqnnOVq
 j3Z9Td4BjBrcCMOH4skPnJx3La72XnsWPgIHKbkYMkKrnLi/LFiskUO8f5MhH+PQ6C4e
 KObEoLRcNyNt5RjzC3mElSNiGYJYULWFrsg3bezwh3jABhgWyneK+vjFogRmjHykQlLG
 pWevR8tpcYknyHIgomouTnrqo+1ywloJhMER3s2boTItwF3cssClvvIVSZ0lh6YyFYQq
 9Ik5+4zmwGMCXlH03L6WSLUMi7or2zDUnDFVYXyfNH8gVHiYWki8yp+UMawuPW1mVK8/
 yMgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=Symvyf/Uz9S5oKdNsFmtumlityXOKZm70HtIggCwFnk=;
 b=HiM5b/Nk2m0uc0NLdKlceRqRt3eiWTXIT1pHa4CKwZ+E7Z4Cr+lbQ6O6H1EjxzVgFU
 qMWzahMtPxasBXv7zApAOmjXnPIb5z5bL8CDF0ysbrmWlzQIYwFGVK8l9NynywjS2uyy
 jjMBo9sHg5UbKcuoxsdtNdelCrgDijrKwBG59giTDt3qA+yr1Rju1O7n7Gukx865HuiT
 q2bOPpqzSvHMgr5yaccIDbifK3B9CUYJv/SrRjJawDA8BN7x+SBndencvdUgDwo+e5v7
 MwGFbZKKsd7uBk9VSAkYyqJUDxA887R/3spm2wwRFaAg2U/Hy1glwnX7RIC2tO9esrd4
 f0sQ==
X-Gm-Message-State: APjAAAWS9UjV89FpPuuainAiMmxTKax0s1jQSeFd3+sUTkTs92vyxF0c
 gfKQUzPbm5jIQQRNx8UKBqqkXMreEQ==
X-Google-Smtp-Source: APXvYqxUVrAymwj/ugIGi6sQXo8Sqq04CVHfX4dFLvmyXHderTB1493KLtyO4xlY6inwpt5jVs2FxtQjAQ==
X-Received: by 2002:a65:6656:: with SMTP id z22mr5733329pgv.197.1561673732735; 
 Thu, 27 Jun 2019 15:15:32 -0700 (PDT)
Date: Thu, 27 Jun 2019 15:15:07 -0700
Message-Id: <20190627221507.83942-1-nhuck@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
Subject: [PATCH] clk: mediatek: Fix -Wunused-const-variable
From: Nathan Huckleberry <nhuck@google.com>
To: mturquette@baylibre.com, sboyd@kernel.org, matthias.bgg@gmail.com, 
 fparent@baylibre.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_151536_124685_B2E3D634 
X-CRM114-Status: UNSURE (   6.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:649 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: linux-kernel@vger.kernel.org, Nathan Huckleberry <nhuck@google.com>,
 clang-built-linux@googlegroups.com, linux-mediatek@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Clang produces the following warning

drivers/clk/mediatek/clk-mt8516.c:234:27: warning: unused variable
'ddrphycfg_parents' [-Wunused-const-variable] static const char * const
ddrphycfg_parents[] __initconst = {

This variable has never been used. Deleting it to cleanup the warning.

Cc: clang-built-linux@googlegroups.com
Link: https://github.com/ClangBuiltLinux/linux/issues/523
Signed-off-by: Nathan Huckleberry <nhuck@google.com>
---
 drivers/clk/mediatek/clk-mt8516.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/clk/mediatek/clk-mt8516.c b/drivers/clk/mediatek/clk-mt8516.c
index 26fe43cc9ea2..9d4261ecc760 100644
--- a/drivers/clk/mediatek/clk-mt8516.c
+++ b/drivers/clk/mediatek/clk-mt8516.c
@@ -231,11 +231,6 @@ static const char * const nfi1x_pad_parents[] __initconst = {
 	"nfi1x_ck"
 };
 
-static const char * const ddrphycfg_parents[] __initconst = {
-	"clk26m_ck",
-	"mainpll_d16"
-};
-
 static const char * const usb_78m_parents[] __initconst = {
 	"clk_null",
 	"clk26m_ck",
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
