Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B8DE1DAD66
	for <lists+linux-mediatek@lfdr.de>; Wed, 20 May 2020 10:28:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6+yUPdATw/TPsh/IK1VQJMS4AkNWLH2znMpKUJpbOew=; b=Fd0o55RlymQteB
	vjNsiJi+9zZBwy2G3kH33n3vv1wr46LEbnR4kev0ZMOg+2UgF5KGlPXNRHVYmG7FSzWN7/MtQTZcw
	lW9UPHRrclL9v6v9nQIU4d9n+4T/b6ma069jt1w/jyVFcMb2P1+HgrZHjVwi9E4srib/CmvIrBjYI
	eaySJ3PZ6sOEMdNuBtX7Pj9KiUKmLTh008pJd+kQVZKs650jrEMQYc45lSWfLsO51XNP7jXRpGB7z
	z8VD7OVfdz5AOsoX0cGCUavqQbCZy/uWTke0Vja209buLsM4WW2JukcruK2p5JxuOOaQ1EvMVMGt8
	8HxSY1eNgckYA0aGv09Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbK5T-0002wA-HB; Wed, 20 May 2020 08:28:27 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbK5E-0002hs-KY
 for linux-mediatek@lists.infradead.org; Wed, 20 May 2020 08:28:20 +0000
Received: by mail-pj1-x1042.google.com with SMTP id q24so916727pjd.1
 for <linux-mediatek@lists.infradead.org>; Wed, 20 May 2020 01:28:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ll8NxVtMtfVOyEZFFQDfClPq5aIFoMbY7TDtR4kV3zQ=;
 b=kI33MLAoCd0TxRti1KqGfffMmFCe7Qu+9zJ9GzgvLmIhvWroMh2PK76BMUA9xvXNN3
 BeTyj3uDBE9zEEC9mrGi7btmBWv1HKDYmi4AFLoegQbxFbzAiNC0xk//stOr6yOaHvmJ
 RFZ60+RwMPuvjP3Y2vhaAM16aSKaOTZXVNebc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ll8NxVtMtfVOyEZFFQDfClPq5aIFoMbY7TDtR4kV3zQ=;
 b=eWeUnWuV0iSxaeNJHmw3FbdxtlCOZmDKooVDcT0KbgA24JBwg+BMQx0ePhi0WwFl8I
 vmiQdA+0ubtfNjzOwnSYST6XQnBU+ZINmcl5C22Zs5EalFFSSQtmj4EipdvC+MO9I51B
 GVwK7Tc5Xb4Je2YQKjVJsdERBaHEi8JKux11R1ch3YJai52U+HR7Z04Rz8n7w0ufbmQZ
 b9kmaC7Z/cz3zk0r97UjIEZbwjpYfgqOzhoJnJi+8bp7qvyt2fFn/yXcO8Y+a1lcJWRn
 t5bEFisxMykWhd7BgP2WmSFTqmfVd+HWA1JcDw2y4se5syoQQPMadyBeShiGmbQpBVI6
 AmTQ==
X-Gm-Message-State: AOAM533w40frU/K6kpYGWFPV005ScKSRwN9S5/YrE57/E7e2Uiui/1NN
 ADIyRlXjupaBVvNaedEbzhf2LQ==
X-Google-Smtp-Source: ABdhPJyLQteFuXuVc69SpcsEFfMjArlHWm8lgkG4Ws0al46mciJZZn5XJ5qdF3eWNGJdzMi89qu6gw==
X-Received: by 2002:a17:902:bf43:: with SMTP id
 u3mr3434302pls.240.1589963292039; 
 Wed, 20 May 2020 01:28:12 -0700 (PDT)
Received: from acourbot.tok.corp.google.com
 ([2401:fa00:8f:203:93d9:de4d:e834:3086])
 by smtp.gmail.com with ESMTPSA id gg8sm1447775pjb.39.2020.05.20.01.28.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 01:28:11 -0700 (PDT)
From: Alexandre Courbot <acourbot@chromium.org>
To: Tiffany Lin <tiffany.lin@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Rui Wang <gtk_ruiwang@mediatek.com>,
 Yunfei Dong <yunfei.dong@mediatek.com>, Pi-Hsun Shih <pihsun@chromium.org>,
 Maoguang Meng <maoguang.meng@mediatek.com>
Subject: [PATCH 09/10] media: dt-bindings: mtk-vcodec: specify SCP node
Date: Wed, 20 May 2020 17:27:22 +0900
Message-Id: <20200520082723.96136-10-acourbot@chromium.org>
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
In-Reply-To: <20200520082723.96136-1-acourbot@chromium.org>
References: <20200520082723.96136-1-acourbot@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_012812_681574_8093514F 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 Alexandre Courbot <acourbot@chromium.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

The mediatek codecs can use either the VPU or the SCP as their interface
to firmware. Reflect this in the DT bindings.

Signed-off-by: Alexandre Courbot <acourbot@chromium.org>
---
 Documentation/devicetree/bindings/media/mediatek-vcodec.txt | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/mediatek-vcodec.txt b/Documentation/devicetree/bindings/media/mediatek-vcodec.txt
index b6b5dde6abd8..7aef0a4fe207 100644
--- a/Documentation/devicetree/bindings/media/mediatek-vcodec.txt
+++ b/Documentation/devicetree/bindings/media/mediatek-vcodec.txt
@@ -19,7 +19,9 @@ Required properties:
 - iommus : should point to the respective IOMMU block with master port as
   argument, see Documentation/devicetree/bindings/iommu/mediatek,iommu.txt
   for details.
-- mediatek,vpu : the node of video processor unit
+One of the two following nodes:
+- mediatek,vpu : the node of the video processor unit, if using VPU.
+- mediatek,scp : the noode of the SCP unit, if using SCP.
 
 
 Example:
-- 
2.26.2.761.g0e0b3e54be-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
