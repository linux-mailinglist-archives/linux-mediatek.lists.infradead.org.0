Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2224C1C6A00
	for <lists+linux-mediatek@lfdr.de>; Wed,  6 May 2020 09:23:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=947Y1ASeyCyAp0l/34YdJ9ibhX86cJzqKVWrnufwQoE=; b=aW6qYtevA4S58s
	Kk210uNpUHNcYn540LLPUNJRGE54Pfl+m0x3JR9YORqKNFujYvSOmfP9aat454g7kmZJo4QYKpoDL
	LxajY0lN6tUgLdDGotIaz6MZENZiX9JVt8M9XPNsBo/K2DWqFOQqhAARKJAdMUHVoD1hmdHjESBsH
	H2eYBpolAhEgyhC2B7ONCJMRJAdlq5k+WFnX5FDBuT77FMWDW+16iB7uHqizZuWLRVvDzijpE7EBa
	5EEAURq7zGYfMWR2HVUO9Iex0tcQ1xls7av9DoBy9cRsInAvn+xhJDnmylLLwRj9WQq+O3owoUJvV
	zZY333RQo6HkKDAQISsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWEP2-0002em-3s; Wed, 06 May 2020 07:23:36 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWEOy-0002dV-FT
 for linux-mediatek@lists.infradead.org; Wed, 06 May 2020 07:23:33 +0000
Received: by mail-pg1-x544.google.com with SMTP id d22so716775pgk.3
 for <linux-mediatek@lists.infradead.org>; Wed, 06 May 2020 00:23:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aQOpZ08qLj1/ws1BeuDL5FKnb33GCGBWrIdukaDVssI=;
 b=Y+IKNsl0zaKl6T/eoOWDWi18zCQ6C3a+bc7CguIqZo7EmC7n5eDuOiWj83oV4Ayysa
 Iv0SAXAD7rse220viYgokExwuabBT7UIJaqKuswFKAQYOA4k9LX+QkVEGII8LcU8IzBY
 cw1A2cGEAg4QRTrHg9JAcBgvZA27GF1BNNVbA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aQOpZ08qLj1/ws1BeuDL5FKnb33GCGBWrIdukaDVssI=;
 b=lOFvpM5TESKTxAcNHiKPtitKuhPfAbaQm9c8O/KNLTb8GFL4GUuw2X/rPXESrWC0ym
 MaFYIAAgAq94nBNqD2HocNV0+c33W/S9DyHkzuY/49gnGqjxaMccfx9QTPRkkVuLMgtB
 XJgZNFWmpuRafV8vNCnkuLjQkiD2ijfhP/SgeNLxIYGKsqIMGBjNJWF5vou2OFL44mJg
 Ci0633vACkxabdNONLw/tqgvLq647jW7Lrd5g29k3vRQGUInbKw6pv/VDq5szvrTzXXU
 vHeoYCkJtEvgdd8vqsfeo3RmXZ5v1moTtqYwJjsYYVo+G/O22FP5k/vmqIgE1CLdihHq
 WUhA==
X-Gm-Message-State: AGi0PubC5UDbnqichLnjcy2ScR/m6jogBG1DFwICuPWJcsIWV6B/Lrmw
 eVbWCG9ehZUKZYPCpmUJ+bBB1g==
X-Google-Smtp-Source: APiQypKp+kAdMOwuDuCkVL8EkOYlP3gxs7r+jwCCLD+BaNDjnZq+XsrKIH4ywpA+y6qjYg32QYzYww==
X-Received: by 2002:a62:a106:: with SMTP id b6mr6546509pff.23.1588749811749;
 Wed, 06 May 2020 00:23:31 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:3db2:76bf:938b:be05])
 by smtp.gmail.com with ESMTPSA id k6sm3862622pju.44.2020.05.06.00.23.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 06 May 2020 00:23:31 -0700 (PDT)
From: Claire Chang <tientzu@chromium.org>
To: robh@kernel.org, gregkh@linuxfoundation.org, jslaby@suse.com,
 long.cheng@mediatek.com, changqi.hu@mediatek.com
Subject: [PATCH 1/3] serdev: ttyport: add devt for tty port
Date: Wed,  6 May 2020 15:23:12 +0800
Message-Id: <20200506072314.112409-2-tientzu@chromium.org>
X-Mailer: git-send-email 2.26.2.526.g744177e7f7-goog
In-Reply-To: <20200506072314.112409-1-tientzu@chromium.org>
References: <20200506072314.112409-1-tientzu@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_002332_519199_4282F26E 
X-CRM114-Status: UNSURE (   7.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Claire Chang <tientzu@chromium.org>, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

serial_match_port() uses devt to match devices. However, when serdev
registers a tty port, devt has never been set. This makes
device_find_child() always return NULL.

Assign devt in serdev_tty_port_register() to fix this.

Signed-off-by: Claire Chang <tientzu@chromium.org>
---
 drivers/tty/serdev/serdev-ttyport.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/tty/serdev/serdev-ttyport.c b/drivers/tty/serdev/serdev-ttyport.c
index d367803e2044f..9238119173a47 100644
--- a/drivers/tty/serdev/serdev-ttyport.c
+++ b/drivers/tty/serdev/serdev-ttyport.c
@@ -267,6 +267,7 @@ struct device *serdev_tty_port_register(struct tty_port *port,
 {
 	struct serdev_controller *ctrl;
 	struct serport *serport;
+	dev_t devt = MKDEV(drv->major, drv->minor_start) + idx;
 	int ret;
 
 	if (!port || !drv || !parent)
@@ -282,6 +283,7 @@ struct device *serdev_tty_port_register(struct tty_port *port,
 	serport->tty_drv = drv;
 
 	ctrl->ops = &ctrl_ops;
+	ctrl->dev.devt = devt;
 
 	port->client_ops = &client_ops;
 	port->client_data = ctrl;
-- 
2.26.2.526.g744177e7f7-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
