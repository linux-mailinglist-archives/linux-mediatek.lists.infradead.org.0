Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01DA6187A0D
	for <lists+linux-mediatek@lfdr.de>; Tue, 17 Mar 2020 07:57:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RYSvbJxfj/kyyL5gpcYtcOjQAr2KYGalo/PIuHQ5GvM=; b=VMWxtbXJqTdLf0
	xdiOqpyolmhr5U+QAjqnKfaigeKJxPAPLiWdLUowMI12vdYDCHRwrLORpk577TSE0uG0SsRWFlBB1
	aDdzqEbs2xTWVmHIMZq9dUriT6D2yT8LLtAZqqkJH1fu3gHDabBM+o1Wquz9fFV122pjsXfVdAxmy
	89RoNFJUX00VCEAjtZQUjCZ89QvgdQb9zChyIrCLne2SJzwzSRiMq5XNO8WI9lgUTzd6NwgneDtAr
	6rngRe4vkdveU+D7BWIdaiY2VOJOyv4Y1gLynl/xwfTJkTyFykJRy+Nl+WFhgiZFAl4PT/iba75gg
	VXIInvIM9xiHVC9US5Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE6A9-0006m6-QW; Tue, 17 Mar 2020 06:57:17 +0000
Received: from mail-pg1-x549.google.com ([2607:f8b0:4864:20::549])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE68F-0004v9-Fg
 for linux-mediatek@lists.infradead.org; Tue, 17 Mar 2020 06:55:22 +0000
Received: by mail-pg1-x549.google.com with SMTP id c14so6993379pgw.11
 for <linux-mediatek@lists.infradead.org>; Mon, 16 Mar 2020 23:55:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=pBzGjleoRDABxMsluExcps57eD2wDVloI24KvIbaURE=;
 b=UledzLdGZZjZgCktwDrReM83P2/tmN5F4Qnd1xTlFNMGgY4exTx7PpUlYpVJcYkHn2
 qOqSDPrlyo1Tg8E7TNmeCbcaRvzN8X/3p3klGc1pbS5gp4joG2QV+m7zPocAKbdG/djV
 mjbSeXmumJlZpNyD2H16Tr4UjjvSjJ9VFvp84bYCSC8nAKD0ptzQmWlkEpmb2H+YyfEx
 Q5CmFKr/pxFMWAzVJsJwrAUZbJgxAjQUKhVZinz2cSSZ3AoAfMo2MvYj7YHTC2PK7FYy
 y7OzDTmhrmK/3gX546uw6Y/xdIMPy5ZSM/4+vdG2TJbkV4Jqx4cGvW2bLV42+qET+yvr
 zeNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=pBzGjleoRDABxMsluExcps57eD2wDVloI24KvIbaURE=;
 b=hqAVPjIK9diWBTPQ4SXdXb1bzGRA1GcYVGQsKAxkSo7BVMUBIlXgixbVv6wnBCRQ/B
 w7/A3JlYJmRomEppea8p+9i6Ntt9uL8ezVtPkvVW1Nq8r1Gwe3EJwUTVkVdIdOaSuMcu
 y9/CpACK6QIv4Wvtz8WG1/PDfNQ7MIW0P2cKtcDm2k40yuuOD7oSL8u4LjqgWop0aKBg
 OtCOstRB5roGjNKuMaH9kq+Olz1kRtpIcIxXivg5MAyJCoVsmLM1nhKoFQU3UxHzTM6q
 cGmpUHxlMjrhAY36N9LJGpoZZawwrtFkmnACza11/GjBAvhdTKc7oHDn5FDivbg0Uxs5
 MyGQ==
X-Gm-Message-State: ANhLgQ3Np53IPfQd68Na7KgbixlFHN5wsxy+Tp3xJm6NJzONglw3QHf0
 EefiWjulsqP9Ni2vXnvtd4jwB8JSmJa8qlI=
X-Google-Smtp-Source: ADFU+vsI46mjOrzK35IlZFKtn+I16f/ZJ36YpcLgiFZqwRzWEH2bTScx3tkAxfqOUW2oCR5e/5W0bdip3gPKHnQ=
X-Received: by 2002:a17:90a:178e:: with SMTP id
 q14mr3975908pja.132.1584428117265; 
 Mon, 16 Mar 2020 23:55:17 -0700 (PDT)
Date: Mon, 16 Mar 2020 23:54:52 -0700
In-Reply-To: <20200317065452.236670-1-saravanak@google.com>
Message-Id: <20200317065452.236670-7-saravanak@google.com>
Mime-Version: 1.0
References: <20200317065452.236670-1-saravanak@google.com>
X-Mailer: git-send-email 2.25.1.481.gfbce0eb801-goog
Subject: [PATCH v1 6/6] driver core: Fix creation of device links with
 PM-runtime flags
From: Saravana Kannan <saravanak@google.com>
To: stable@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Len Brown <len.brown@intel.com>, Pavel Machek <pavel@ucw.cz>, 
 Matthias Brugger <matthias.bgg@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_235519_558840_3261158E 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:549 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Saravana Kannan <saravanak@google.com>, linux-pm@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jon Hunter <jonathanh@nvidia.com>, linux-mediatek@lists.infradead.org,
 Dmitry Osipenko <digetx@gmail.com>, kernel-team@android.com,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>

After commit 515db266a9da ("driver core: Remove device link creation
limitation"), if PM-runtime flags are passed to device_link_add(), it
will fail (returning NULL) due to an overly restrictive flags check
introduced by that commit.

Fix this issue by extending the check in question to cover the
PM-runtime flags too.

Fixes: 515db266a9da ("driver core: Remove device link creation limitation")
Reported-by: Dmitry Osipenko <digetx@gmail.com>
Tested-by: Jon Hunter <jonathanh@nvidia.com>
Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
Tested-by: Dmitry Osipenko <digetx@gmail.com>
Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
Link: https://lore.kernel.org/r/7674989.cD04D8YV3U@kreacher
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
(cherry picked from commit fb583c8eeeb1fd57e24ef41ed94c9112067aeac9)
Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 drivers/base/core.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/base/core.c b/drivers/base/core.c
index 31007af4cb79..928fc1532a70 100644
--- a/drivers/base/core.c
+++ b/drivers/base/core.c
@@ -213,6 +213,9 @@ void device_pm_move_to_tail(struct device *dev)
 			       DL_FLAG_AUTOREMOVE_SUPPLIER | \
 			       DL_FLAG_AUTOPROBE_CONSUMER)
 
+#define DL_ADD_VALID_FLAGS (DL_MANAGED_LINK_FLAGS | DL_FLAG_STATELESS | \
+			    DL_FLAG_PM_RUNTIME | DL_FLAG_RPM_ACTIVE)
+
 /**
  * device_link_add - Create a link between two devices.
  * @consumer: Consumer end of the link.
@@ -274,8 +277,7 @@ struct device_link *device_link_add(struct device *consumer,
 {
 	struct device_link *link;
 
-	if (!consumer || !supplier ||
-	    (flags & ~(DL_FLAG_STATELESS | DL_MANAGED_LINK_FLAGS)) ||
+	if (!consumer || !supplier || flags & ~DL_ADD_VALID_FLAGS ||
 	    (flags & DL_FLAG_STATELESS && flags & DL_MANAGED_LINK_FLAGS) ||
 	    (flags & DL_FLAG_AUTOPROBE_CONSUMER &&
 	     flags & (DL_FLAG_AUTOREMOVE_CONSUMER |
-- 
2.25.1.481.gfbce0eb801-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
