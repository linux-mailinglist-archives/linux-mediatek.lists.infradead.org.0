Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E837732E
	for <lists+linux-mediatek@lfdr.de>; Fri, 26 Jul 2019 23:04:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8phmECUPIQ6/2SEOwyD9Z+3yCoKzKlrPTrz8thRVecY=; b=rtMJVN7NEonwI+
	pTWpCat6OeTjemnuP+MqIZ8ganN/ZyZyr8hOXgsJYJir/RPIVYVfY+pauAH4xHYIsnsfrHK8soprI
	KSWdR9v+qbH9ok0HT/zLJlwG8GMATHvHOaOZJuL0fj1blcrbctpsmT3DgGGwGYEUcwOvFKi2hr7dN
	Kt7Sas15ZVla61aVpxfPLSNHtS7laOBrqrv2GikTCvet281U1p12UovftVTtbWLqd8o6n801OUyY0
	odK0caeeCQfOO+3an1C+Of7BXgv3sH6BtnLFfF6CQohKmEP7w0suviWm4ayy2EnAVzuHzTOMUrPTx
	j9GQgdbOvJIeYJvVYM+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr7O5-0006bh-2i; Fri, 26 Jul 2019 21:04:25 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr7O1-0006bK-F1
 for linux-mediatek@lists.infradead.org; Fri, 26 Jul 2019 21:04:22 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id C8CF91266535F;
 Fri, 26 Jul 2019 14:04:20 -0700 (PDT)
Date: Fri, 26 Jul 2019 14:04:20 -0700 (PDT)
Message-Id: <20190726.140420.688330328284393964.davem@davemloft.net>
To: opensource@vdorst.com
Subject: Re: [PATCH net-next 3/3] net: dsa: mt7530: Add support for port 5
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190724192549.24615-4-opensource@vdorst.com>
References: <20190724192549.24615-1-opensource@vdorst.com>
 <20190724192549.24615-4-opensource@vdorst.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 26 Jul 2019 14:04:21 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_140421_505060_8DD8F922 
X-CRM114-Status: UNSURE (   3.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: andrew@lunn.ch, f.fainelli@gmail.com, frank-w@public-files.de,
 netdev@vger.kernel.org, sean.wang@mediatek.com, linux@armlinux.org.uk,
 linux-mips@vger.kernel.org, devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, john@phrozen.org, matthias.bgg@gmail.com,
 vivien.didelot@gmail.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Ren=E9 van Dorst <opensource@vdorst.com>
Date: Wed, 24 Jul 2019 21:25:49 +0200

> @@ -1167,6 +1236,10 @@ mt7530_setup(struct dsa_switch *ds)
>  	u32 id, val;
>  	struct device_node *dn;
>  	struct mt7530_dummy_poll p;
> +	phy_interface_t interface;
> +	struct device_node *mac_np;
> +	struct device_node *phy_node;
> +	const __be32 *_id;

Reverse christmas tree here please.

Thank you.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
