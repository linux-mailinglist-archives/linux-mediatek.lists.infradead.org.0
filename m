Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C948F8850
	for <lists+linux-mediatek@lfdr.de>; Tue, 12 Nov 2019 06:58:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EuNI6LyoGOfNA8u/McD054a5ikfxWpO80guhqGut0jg=; b=aJpYT+CClgEx7y
	r9AFdOEkA1BEUhLcBfYUyTqgWtI7Cs5X+HWVDWzLicFazayR/UnBO0jo0IZFnFDW/NZ1+v1gkNqZ6
	GmOaJcsLkqa+KAqAZDp1vMBM81qFZgsG3T1MM8yBMwdEJ21tIrkJ4j2CcMN8IWzX/T0kbV3SvjAXx
	B/ygu6y+SGhUH/8Ot+Sw6kqhi9xz9QmMiNxDmGTBU+sbw98YbvEUdVrzVb7ezDkoBHw8nuycvwjfV
	82lSEjoxPdC1vcv0uAhBkr8IH6YOy1EBFb6Z6BZ88zs/3vudDuT13xBUKix0dTilolyDhALAcbCAU
	GFmqwFZPIFek55k4QF+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUPC2-0007xn-LG; Tue, 12 Nov 2019 05:58:22 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUPBy-0007xP-2B
 for linux-mediatek@lists.infradead.org; Tue, 12 Nov 2019 05:58:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573538296;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=t4H1BAGawGahyIzPrHbrHyHMfWVwsFAeBKzU7Z42zAo=;
 b=V/U+Z6I6yeoyzjj97gPVnvCgUuCSQnPEND8w4QKeKpZfmEitLLglPMXHXYo8tTfkv+7X0P
 pQs4D0RvuKwqrH5Bub2F0Ze+undyu+QHP9JbGsMtz1eAWra7SXx/JQnh6M0LmiKMuuXmr/
 Vz296yBdqksXBdTvYMCW/YreAc/Nb8E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-50-OfrAog8PPI22IT-AmCI-Nw-1; Tue, 12 Nov 2019 00:56:27 -0500
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C3645800C61;
 Tue, 12 Nov 2019 05:56:24 +0000 (UTC)
Received: from localhost (ovpn-112-54.rdu2.redhat.com [10.10.112.54])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5D2D860852;
 Tue, 12 Nov 2019 05:56:18 +0000 (UTC)
Date: Mon, 11 Nov 2019 21:56:17 -0800 (PST)
Message-Id: <20191111.215617.1625420574702786179.davem@redhat.com>
To: Mark-MC.Lee@mediatek.com
Subject: Re: [PATCH net,v2 1/3] net: ethernet: mediatek: Integrate GDM/PSE
 setup operations
From: David Miller <davem@redhat.com>
In-Reply-To: <20191111065129.30078-2-Mark-MC.Lee@mediatek.com>
References: <20191111065129.30078-1-Mark-MC.Lee@mediatek.com>
 <20191111065129.30078-2-Mark-MC.Lee@mediatek.com>
Mime-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-MC-Unique: OfrAog8PPI22IT-AmCI-Nw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_215818_174789_D24E3ADD 
X-CRM114-Status: UNSURE (   6.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, andrew@lunn.ch, jakub.kicinski@netronome.com,
 devicetree@vger.kernel.org, netdev@vger.kernel.org, sean.wang@mediatek.com,
 linux-kernel@vger.kernel.org, opensource@vdorst.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, john@phrozen.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: MarkLee <Mark-MC.Lee@mediatek.com>
Date: Mon, 11 Nov 2019 14:51:27 +0800

> +static void mtk_gdm_config(struct mtk_eth *eth, u32 config)
> +{
> +	int i;
> +
> +	for (i = 0; i < MTK_MAC_COUNT; i++) {
> +		u32 val = mtk_r32(eth, MTK_GDMA_FWD_CFG(i));
> +
> +		/* default setup the forward port to send frame to PDMA */
> +		val &= ~0xffff;
> +
> +		/* Enable RX checksum */
> +		val |= MTK_GDMA_ICS_EN | MTK_GDMA_TCS_EN | MTK_GDMA_UCS_EN;
> +
> +		val |= config;
> +
> +		mtk_w32(eth, val, MTK_GDMA_FWD_CFG(i));
> +	}
> +	/*Reset and enable PSE*/

Please put spaces before and after the comment sentence, like:

	/* Reset and enable PSE */


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
