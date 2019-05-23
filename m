Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C75D3285F7
	for <lists+linux-mediatek@lfdr.de>; Thu, 23 May 2019 20:35:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/EzuE/UVbRm4CTrZszjdvXmMUWIyjfTbwTuFIL9lDnw=; b=OzHC/NGMyBoQ21
	IQoPWv6UDBA1VsEDCRGyg7w/jmkeqwxLH2bXQUZTEfnT7yMxP3xSkrgo7uIz4pN3Xt1dWDLjoEI1j
	/lIInDn+lFLFwX2xz1jt265jYaVqLKhNhtJJ85B5fJY97ibtZCeBMgfWWbrbRQrrj7OF6AgyqAUjV
	VjomcJci4JZSXLFfsDv+U7cZ8yUbcBE+VQnyxjoCIncXlcWM4B8E+madG7A8KrHhnBCKw4Uay83M1
	fmOPlizhDI7YQGCm+pR0P+DnkENJwqneeBkHKqP2Tx1d5kyTs1l7KdvGG5NXL+IjaQEp4DrFYfw0G
	UKWV/O63dulPl+YyiJ5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTsYp-00059F-1F; Thu, 23 May 2019 18:35:27 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTsYg-00052Q-CA; Thu, 23 May 2019 18:35:19 +0000
Received: by mail-pg1-x542.google.com with SMTP id h2so516224pgg.1;
 Thu, 23 May 2019 11:35:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=UGdXyM1CME4KwYx3fgLzBPCxywcWE4oo6EgOOlK8Fv4=;
 b=k+4H2kGkwk5LvYzjyAAzDQV621YQlhBCwYT7yzcPAaSpAEtVqW+TY+zhTG0yvSkrWj
 GQ6z3IUyCmpIffYXzTHyJq69fwRULEX54aMbMK8faxxk0RX1LWtkIXRgTxhkqQC7u7tH
 tz+W5oBXaKlZkhj8p/DOp4G833AnDwbzOKzqnKuiQ7Z82brOcHR6P+bX2ODxOYgpVCqh
 eivtfvor7iBVK83n3zl6enzJmyP5Q4SFoHjprVqRATAADIilXxgW2Rn50ZCAQV4BbSjk
 ACiKS4kvcD/YhpAqkTWULi+QhSJeu8ODFTdFMrk2QloGc6ebfTZQ9awBYhGHX44Af+dt
 NI4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=UGdXyM1CME4KwYx3fgLzBPCxywcWE4oo6EgOOlK8Fv4=;
 b=mVaj0OFs5szYm0xFUHIwvd6vMQQ5BBJlvVsVLIUsCGRPyLNakfaOkr8VtZBXvoYGgB
 G2E2+o1uJS1wLOEJwjtdU3GaFkF+43kCPtSKkzZVHHp074FeXklxSX3Obih20AzwBDOi
 xVL+g8ONSiAzthJI2dme1rNPW/Ds7iRf1BGOjYP5830PAqVMB3BxEssey0bQc9QvvX8r
 WlR04Z5AUb8IGOsM0vUK9fBppu2mJDs6Tj3PT7GG4LnmJ5vcwwb8laSUir4jiUapzLn3
 2pE9tL+ZZ59Na2FBzWqZAMTLn6juShtRAOi/y8gAl748hFnmQm1mWGrKDjslasYjq/c7
 NgUQ==
X-Gm-Message-State: APjAAAVBuhZ+Y1vk1dVD++lbF5saXcILN/5D2whnDyRucsXn8Hujyt8C
 jtmeLvfzMbLm0pc4U0BUpqQ=
X-Google-Smtp-Source: APXvYqyAGgM62zL/Uh7TSDVYGilK6ktbyrCOFvLMxfqhvED4rFqQqXGVfzjK0DQt2Kn6xYezxdLwMQ==
X-Received: by 2002:a65:42c3:: with SMTP id l3mr75585700pgp.372.1558636517476; 
 Thu, 23 May 2019 11:35:17 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.73])
 by smtp.gmail.com with ESMTPSA id o7sm123715pfp.168.2019.05.23.11.35.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 11:35:16 -0700 (PDT)
Date: Fri, 24 May 2019 00:05:10 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: reg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Sergio Paracuellos <sergio.paracuellos@gmail.com>,
 Mamta Shukla <mamtashukla555@gmail.com>,
 NeilBrown <neil@brown.name>, Peter Vernia <peter.vernia@gmail.com>,
 devel@driverdev.osuosl.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: mt7621-pci: pci-mt7621: Remove unneeded variable err
Message-ID: <20190523183510.GA12942@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_113518_442040_B1421483 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hariprasad.kelam[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

devm_request_pci_bus_resources function will return -EBUSY/-ENOMEM
in fail case and returns 0 on success.

So no need to store return value in err variable.

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index 03d919a..bc2a3d1 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -596,17 +596,12 @@ static int mt7621_pcie_request_resources(struct mt7621_pcie *pcie,
 					 struct list_head *res)
 {
 	struct device *dev = pcie->dev;
-	int err;
 
 	pci_add_resource_offset(res, &pcie->io, pcie->offset.io);
 	pci_add_resource_offset(res, &pcie->mem, pcie->offset.mem);
 	pci_add_resource(res, &pcie->busn);
 
-	err = devm_request_pci_bus_resources(dev, res);
-	if (err < 0)
-		return err;
-
-	return 0;
+	return devm_request_pci_bus_resources(dev, res);
 }
 
 static int mt7621_pcie_register_host(struct pci_host_bridge *host,
-- 
2.7.4


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
