Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 049B7D217E
	for <lists+linux-mediatek@lfdr.de>; Thu, 10 Oct 2019 09:15:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hSGyHXZ1wElQprM834GNPKcgnlWjdVwNHDh4QBuEOl4=; b=eCjeJSqQ99Bgqa
	oCtfKAPkfSaCvMxQ1NGik5yRkA7K24kyd9b5NN8heOM04RWMoriYzMUlt3g1zaZLuApCi0zolkEmW
	HYapZUiQ35FN2hoJlfS2ScK/Zkj0vH3BCg9jaUnmYbNXI8A1rA1q5yqFj6FZYNbWJka0RoWEfYA37
	f0FSMzmbYKaktVa37jvOTeTS2ug2U0nLxJTRfPX3Y2eYG/gO2Xg70AM89fTTO3r8vblRzFKeOTExl
	aoyljco6zoeZldmdZPHj3sftuHs2NdRif7zBfP7YEzo6mEhlGem9nzo/kzp5xGUat2O6Lczake9P3
	l/VI3dg9LiBKWEv74p2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iISfM-0003zr-Rl; Thu, 10 Oct 2019 07:15:16 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iISet-0002fQ-W8; Thu, 10 Oct 2019 07:14:49 +0000
Received: from dhcp-172-31-174-146.wireless.concordia.ca (unknown
 [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 2F573290694;
 Thu, 10 Oct 2019 08:14:45 +0100 (BST)
Date: Thu, 10 Oct 2019 09:14:42 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: <Tudor.Ambarus@microchip.com>
Subject: Re: [PATCH v2 06/22] mtd: spi-nor: Rework read_fsr()
Message-ID: <20191010091433.2977865a@dhcp-172-31-174-146.wireless.concordia.ca>
In-Reply-To: <20190924074533.6618-7-tudor.ambarus@microchip.com>
References: <20190924074533.6618-1-tudor.ambarus@microchip.com>
 <20190924074533.6618-7-tudor.ambarus@microchip.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_001448_178707_CD142E82 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org, vigneshr@ti.com,
 geert+renesas@glider.be, andrew@aj.id.au, richard@nod.at,
 linux-kernel@vger.kernel.org, vz@mleia.com, marek.vasut@gmail.com,
 jonas@norrbonn.se, linux-mtd@lists.infradead.org, joel@jms.id.au,
 miquel.raynal@bootlin.com, matthias.bgg@gmail.com,
 linux-mediatek@lists.infradead.org, computersforpeace@gmail.com,
 dwmw2@infradead.org, linux-aspeed@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, 24 Sep 2019 07:46:12 +0000
<Tudor.Ambarus@microchip.com> wrote:

> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> static int read_fsr(struct spi_nor *nor)
> becomes
> static int spi_nor_read_fsr(struct spi_nor *nor, u8 *fsr)
> 
> The new function returns 0 on success and -errno otherwise.
> We let the callers pass the pointer to the buffer where the
> value of the Flag Status Register will be written. This way
> we avoid the casts between int and u8, which can be confusing.
> 
> Prepend spi_nor_ to the function name, all functions should begin
> with that.
> 
> S/pr_err/dev_err and drop duplicated dev_err in callers, in case the
> function returns error.

Same comments as for patch 5.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
