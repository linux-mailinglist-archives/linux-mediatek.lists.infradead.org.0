Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35B1810CE7F
	for <lists+linux-mediatek@lfdr.de>; Thu, 28 Nov 2019 19:24:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rJLawJ0aPl7N6UEQsvurWEjL4JhwTC+pnL+KhFoKUsg=; b=mJVMzjU4kMm1zk
	jj3JJFNtDNbY3+aL1ORPsOQ5u3B+5/UDaJ+Z7IJD5vrQMR6gYkl12Mqu1b0EIEn2x5U+vNzxA0sDq
	S1efyakrkLx8yDxZrQqhRZqqxF9v6pEFbcs7Lg3vetiBzbJh9JE+r3J6u1RIdXLVNp+okMGn1x2Zk
	/Y6PGDfzUF29WKcW4I8bisyYViG7kpexF29wJikZezanQqNwon6041patQg6C94LnwrlVkk4xItrU
	TEHTuAV3M+6gRD6nxQHUuHfAeQFvm2M5Zg7ns4sh+N7Xxf+lBFNJp2n2GC6pUQuKDp/3iCSPyvF/a
	lNJ+DeR5JS665teb/Njg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaOTB-0002gD-Gq; Thu, 28 Nov 2019 18:24:49 +0000
Received: from mail-lj1-f194.google.com ([209.85.208.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaOT6-0002fD-Gn
 for linux-mediatek@lists.infradead.org; Thu, 28 Nov 2019 18:24:48 +0000
Received: by mail-lj1-f194.google.com with SMTP id k8so18864260ljh.5
 for <linux-mediatek@lists.infradead.org>; Thu, 28 Nov 2019 10:24:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=++fr2irPtIHzb3D2aK7SmOZd1oRSgJeu/nXnMOMaZ3Y=;
 b=ec8X1cuhbk5HWzlDRFeC9hKNqTy7492Fn37O9R/IgEz4VeQGJkXQgwMpLJKGUQrcT/
 BTJHiDne6bi3qLCUoSnEuVX1TOarYrnXQW2uECzvTSKwdiHAmf8k5hIm4Kyg97OhHtVq
 EjFyM0R0XtYNCLxAUY9o+sfoI+aWMyQJe6faZpQzjrjCC7xcOpeqfeaHBCaDPsI4pQG0
 hVUTLaLPXnz4U+aC8qoX2Uq9cPJaBkD0/xH6Nnm1rk8k5FdQs1tZP/UbKc1TeEH+c4v/
 bFCRwIfMojT7uPLyWvm4c34RCUDtcoUhmyIYdgfDXKQxsYw8xpRIJiTA/+XXKI05+0Pj
 +UrQ==
X-Gm-Message-State: APjAAAWhsEr/o0uWnJN0XZfLb4lWi4q+7Cdnh4dTKuLs6zlcyqB3lAik
 ILKm1+q88tkgE8QQNJx2DlI=
X-Google-Smtp-Source: APXvYqxCIuCGnMbisCv+anAiHCumcyWZp1jEOHberaOJFCNbtaOm/QQxqVUXaIF5C+68Wfl0SPCp0g==
X-Received: by 2002:a2e:910b:: with SMTP id m11mr10635547ljg.213.1574965480607; 
 Thu, 28 Nov 2019 10:24:40 -0800 (PST)
Received: from xi.terra (c-14b8e655.07-184-6d6c6d4.bbcust.telenor.se.
 [85.230.184.20])
 by smtp.gmail.com with ESMTPSA id a12sm4261166ljk.48.2019.11.28.10.24.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 10:24:39 -0800 (PST)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@xi.terra>)
 id 1iaOT2-0005hW-AA; Thu, 28 Nov 2019 19:24:40 +0100
From: Johan Hovold <johan@kernel.org>
To: Marcel Holtmann <marcel@holtmann.org>,
 Johan Hedberg <johan.hedberg@gmail.com>
Subject: [PATCH] Bluetooth: btusb: fix non-atomic allocation in completion
 handler
Date: Thu, 28 Nov 2019 19:24:27 +0100
Message-Id: <20191128182427.21873-1-johan@kernel.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_102444_557620_8827407E 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jhovold[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.5 FROM_FMBLA_NEWDOM      From domain was registered in last 7 days
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
Cc: Sean Wang <sean.wang@mediatek.com>, linux-kernel@vger.kernel.org,
 stable <stable@vger.kernel.org>, Johan Hovold <johan@kernel.org>,
 linux-bluetooth@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

USB completion handlers are called in atomic context and must
specifically not allocate memory using GFP_KERNEL.

Fixes: a1c49c434e15 ("Bluetooth: btusb: Add protocol support for MediaTek MT7668U USB devices")
Cc: stable <stable@vger.kernel.org>     # 5.3
Cc: Sean Wang <sean.wang@mediatek.com>
Signed-off-by: Johan Hovold <johan@kernel.org>
---
 drivers/bluetooth/btusb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/bluetooth/btusb.c b/drivers/bluetooth/btusb.c
index 70e385987d41..b6bf5c195d94 100644
--- a/drivers/bluetooth/btusb.c
+++ b/drivers/bluetooth/btusb.c
@@ -2602,7 +2602,7 @@ static void btusb_mtk_wmt_recv(struct urb *urb)
 		 * and being processed the events from there then.
 		 */
 		if (test_bit(BTUSB_TX_WAIT_VND_EVT, &data->flags)) {
-			data->evt_skb = skb_clone(skb, GFP_KERNEL);
+			data->evt_skb = skb_clone(skb, GFP_ATOMIC);
 			if (!data->evt_skb)
 				goto err_out;
 		}
-- 
2.24.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
