Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D6C712FA4C
	for <lists+linux-mediatek@lfdr.de>; Fri,  3 Jan 2020 17:26:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T+j2deN8tJh3H0LHElwJbOj4oHz61YmMV1dwAXw5ISo=; b=aSzGil1cfFoODd
	M+sUhtcf10sHNcDXWtaaJOVqzlbT5z7xsynOCjGmRzgCds7NstF1eaJXo068jXkI2Vb3bEslchhyZ
	bk72HDyHQscczqHcp/NQTTlOkJdHWRVVdMuKtKwoFWHCk/jYGMHat7TjSqIg1hgzKWU9sWM0i14St
	MYThViPh/N7uaiCkXLWLIDhSxNFS+u0PURTWdjK5c9yXS+5ftI11D/EWooPCdJ55nuM27uRT2lPBE
	cDlWs2OSG9vbFtFGeaLk9CTCCocMbTP0JvIEtxlaNeKtW3r4Vixc4zCSeuunUy8RQkwiQ0KXIJTFF
	8Xg+e2Z5NOFxyCdFBIQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inPmg-0006Cv-Eq; Fri, 03 Jan 2020 16:26:46 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inPmW-00065C-N3
 for linux-mediatek@lists.infradead.org; Fri, 03 Jan 2020 16:26:37 +0000
Received: by mail-wr1-x443.google.com with SMTP id c14so42938121wrn.7
 for <linux-mediatek@lists.infradead.org>; Fri, 03 Jan 2020 08:26:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KuPXHvUieOmI5Quzb1wPB6cX8GScS9645pKcrDEMVR0=;
 b=AVBQvJs49csGx2cdaeh5gmzw6Urii3kTtSyLmvLNi8gpVnaPQrbqs0ZY45KCIz6EC/
 C7RTEpgo77kCamXGyms333DcRTTHK0t3d+FkSC7lRW6R2yAo1bU+VYVYQrh15JxLZjFJ
 MuToaslvZw7Jtf2t/LLiH67L5GSUT2SzX2v4oFRtpk8hx4kmcAbZD1tjzOYwWDFbsl/U
 gSzTD7KiTKWxXbY5zWGhMcZhVoTHrTagHR4uj58CrjbwmtXM5qH42ph2GDpaL1aGFo2A
 8zXyJlNuNISbDnnP4yeBhSHj5p0ap31ktsXFF4udaFwBhIzhi9C+ydlsrhVJuMispf9J
 iKCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KuPXHvUieOmI5Quzb1wPB6cX8GScS9645pKcrDEMVR0=;
 b=YXHAwDTKY7YIePQ2CZW6GLh23zBzSJKEeLw21HBuIao3czWbqUOz0H25qUi+vtna8a
 EtU7pZXGsM4RunVs1SnRVjD3YYgQT98H/rzSOf5Py+2S3Wxac4I0tE6L06l5eOt//6iN
 20pJw8AjKVc67sJRRUkS6n5+9NrJy/1QqZtNvpxQmDbHb6OCNffTbUJguMhk4czspS5h
 EJ0bmd7Cp9u5Gfq6+EVGlk+A+WmHNQRqImUVw9jnpVJSwtAICfB9muvBFjK2A/+3m+gF
 hVbA4uOZZhW6xKLcAwCsW3xIcUbHv3nU3xH5VLCak7dM34zNNriT4YFph6vwyMS0VXJI
 BLzw==
X-Gm-Message-State: APjAAAXxiaWCMKYZVdSgvebbSw+yxNpF7u1jlaQvF8CRYdGBkmm/aBC4
 bisIFJGwlXXKFF6JjfeCqKLLBQ==
X-Google-Smtp-Source: APXvYqywRWOLXJTVexW1vEFrIxddF8NF9xPYtArFe6KifUVJASSItqf4NTiWw0Ldz6UjN1VmdQKlBQ==
X-Received: by 2002:adf:ea8a:: with SMTP id s10mr86888598wrm.278.1578068795065; 
 Fri, 03 Jan 2020 08:26:35 -0800 (PST)
Received: from radium.baylibre.local
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id x14sm12564234wmj.42.2020.01.03.08.26.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 08:26:34 -0800 (PST)
From: Fabien Parent <fparent@baylibre.com>
To: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org
Subject: [PATCH 1/2] dt-bindings: iommu: Add binding for MediaTek MT8167 IOMMU
Date: Fri,  3 Jan 2020 17:26:31 +0100
Message-Id: <20200103162632.109553-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.25.0.rc0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_082636_748672_1110067A 
X-CRM114-Status: UNSURE (   7.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, matthias.bgg@gmail.com, joro@8bytes.org,
 robh+dt@kernel.org, Fabien Parent <fparent@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This commit adds IOMMU binding documentation for the MT8167 SoC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 Documentation/devicetree/bindings/iommu/mediatek,iommu.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iommu/mediatek,iommu.txt b/Documentation/devicetree/bindings/iommu/mediatek,iommu.txt
index ce59a505f5a4..eee9116cf9bb 100644
--- a/Documentation/devicetree/bindings/iommu/mediatek,iommu.txt
+++ b/Documentation/devicetree/bindings/iommu/mediatek,iommu.txt
@@ -60,6 +60,7 @@ Required properties:
 	"mediatek,mt2712-m4u" for mt2712 which uses generation two m4u HW.
 	"mediatek,mt7623-m4u", "mediatek,mt2701-m4u" for mt7623 which uses
 						     generation one m4u HW.
+	"mediatek,mt8167-m4u" for mt8167 which uses generation two m4u HW.
 	"mediatek,mt8173-m4u" for mt8173 which uses generation two m4u HW.
 	"mediatek,mt8183-m4u" for mt8183 which uses generation two m4u HW.
 - reg : m4u register base and size.
-- 
2.25.0.rc0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
