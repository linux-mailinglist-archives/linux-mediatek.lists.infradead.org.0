Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70BE881A1B
	for <lists+linux-mediatek@lfdr.de>; Mon,  5 Aug 2019 14:59:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7H47YxHifbZF1Z1kM6R0rMW9AvGMDcb4KWJvLVG0DHU=; b=JT1zSeH7BkP/3k
	6IVxOyPVQKUKDxIBJf4h/+hINzReB2rF8DVo53K5Gp08kmriy05BBSTzO3n4r8pZrua2HW6LpyZcL
	5QujhqsYgWOZcURui+jxeSrBb2/RO61EkI80DCr/i/8enUuuR/En/Lx182jC1CpLLytXV0g7kycIw
	FB9ww42NmS5/UyDPGivYOZY+QsU3DxC86NKsr+4xNVXtciwpFBzbelzHFbbcdLSJaRjmZsQAtGCWE
	xB5KQtnsnHYVgYBCaROkds0RcK2YYsYr+A3ioWtV65WFWvOV3G06ZMYvcPtnBuZamFlys83f6APbz
	Zl/ImUej2bz4/873wriQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huca2-0004U0-Lc; Mon, 05 Aug 2019 12:59:14 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hucZk-00045B-Bm
 for linux-mediatek@lists.infradead.org; Mon, 05 Aug 2019 12:59:00 +0000
Received: by mail-wr1-x443.google.com with SMTP id f9so5403592wre.12
 for <linux-mediatek@lists.infradead.org>; Mon, 05 Aug 2019 05:58:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=D1BgNM2O50qMEacQ9ueo5XhVsMsgr663mURR/65nCS8=;
 b=x6ZSwOQbFU227kVmjbkUTbeCX9UkSrwO9Y8Znms5YvqO/c1EY25vYimVjwyKE5XMlj
 xJMPeL++r0FG3YpFbrCEe+ky0RgbyXi55r9HvWZJkPtDGGM5+soXNUqG+O6o+sP7aYfD
 212hWYsFrNbVLrGizdS5xi34j6WrVYVVFaZaZTqpO0hBgtuhzWNwvFwCOlllAmx5vL4q
 wVpuUveOgy8ouv555qscQY3uQEvTQtI7w6WJW5adzrJgmRnHwX96QTKEfN6Czmayd6ib
 pEL2h1ow0J8ZumiZ2bDybnyRVgaucZQ2U13go7woATDuA1K7P+UmMSjsMvmGd5jI7RD4
 ldaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=D1BgNM2O50qMEacQ9ueo5XhVsMsgr663mURR/65nCS8=;
 b=BZYQTcnJnxwIZI2E9D45TV4zJvxgNKlS3i+Y1Gn/8uDJg0D55OLs37SbQjzR+HW3qu
 BpxW6wYJys3oLPCKATnhYkMK3X03vj3bUwgcvRVcozndegT32UWPhkoR8RdlWPf8yLry
 naSOBECS1hkLc6uaBeLh5Nk0VQ9k0b7oE2Uuf8PIGBdBYubzOQ8XRFBCcBb/EAW+K/o0
 BLMwkcFTM9c27tzSofaxhuJiZYOndUp/mhaRX0bIuGIhgmC/rkLg1SqyFSMgKCJuHFJ4
 tmJeG99YzHqb48pjIcse0mzuCDAZoAL/Uom+5FxvUi22sWRZ8/Kjms+SoVFgsqd7HOAl
 R5Gg==
X-Gm-Message-State: APjAAAU8LS3ex5FC8DBmQ36s/MCAF21H4SBbSDFNYWcLRCYmT6uJotHL
 w6GcYtM6yjPSJ7dz5MtNt4CYMA==
X-Google-Smtp-Source: APXvYqxjUyHGwnsENRGPnY7OdGXXY3X3GMtZZhvQF/96Pw7p0vEa9V6iBlA2Mnw7rhqJaFvPqAiD3g==
X-Received: by 2002:adf:c003:: with SMTP id z3mr79675952wre.243.1565009931515; 
 Mon, 05 Aug 2019 05:58:51 -0700 (PDT)
Received: from radium.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id k9sm15582779wrd.46.2019.08.05.05.58.50
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 05:58:50 -0700 (PDT)
From: Fabien Parent <fparent@baylibre.com>
To: thierry.reding@gmail.com,
	robh+dt@kernel.org,
	matthias.bgg@gmail.com
Subject: [PATCH 1/2] dt-bindings: pwm: pwm-mediatek: Add documentation for
 MT8516
Date: Mon,  5 Aug 2019 14:58:47 +0200
Message-Id: <20190805125848.15751-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_055857_667907_96DBB691 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Fabien Parent <fparent@baylibre.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add the device-tree documentation for the PWM IP on the MediaTek
MT8516 SoCs.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 Documentation/devicetree/bindings/pwm/pwm-mediatek.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt b/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt
index 991728cb46cb..9152bf5afe56 100644
--- a/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt
+++ b/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt
@@ -6,6 +6,7 @@ Required properties:
    - "mediatek,mt7622-pwm": found on mt7622 SoC.
    - "mediatek,mt7623-pwm": found on mt7623 SoC.
    - "mediatek,mt7628-pwm": found on mt7628 SoC.
+   - "mediatek,mt8516-pwm": found on mt8516 SoC.
  - reg: physical base address and length of the controller's registers.
  - #pwm-cells: must be 2. See pwm.txt in this directory for a description of
    the cell format.
-- 
2.23.0.rc1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
