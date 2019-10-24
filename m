Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56528E2A3E
	for <lists+linux-mediatek@lfdr.de>; Thu, 24 Oct 2019 08:05:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=If+p8t2mPB8npr3CPlafXFQdqyRsD8CKoDZVWJ/EQ+0=; b=FSXYIh+xWCR/0W
	xoKzCqiiNwIIHkmwfZgpEHHMwb6KyPoKNj7SLZWOj9VB4T8mY2WoFPzLcpfonrdSfpHwy+TYku7gQ
	cpYknCnp3ocVTsjw6jCMCMRFUOCC/DBAUU9QbbbY1u0dFhCiXx4a769Rw6a7z9n4CfO/F3svUPmCZ
	UducunalY2IpYM+RIESTJ5kBm0SYaUaCzSIAmG/PDABxCJwaphRKEJDKwylYoGb1f6s/9mkEYmBet
	qpOtUEzRjG6O2bpywF/EpruYoopT7d9SoRc/uazeQCCgl20UwHjPF7TQceWiUU5r675qKSai+i7lQ
	A6mxgHWw+83+dALRy6ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNWFO-0006c1-FU; Thu, 24 Oct 2019 06:05:22 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNWF2-0005C4-95; Thu, 24 Oct 2019 06:05:01 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id C115128F789;
 Thu, 24 Oct 2019 07:04:56 +0100 (BST)
Date: Thu, 24 Oct 2019 08:04:52 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: <Tudor.Ambarus@microchip.com>
Subject: Re: [PATCH v2 08/22] mtd: spi-nor: Rework write_enable/disable()
Message-ID: <20191024080452.522b6447@collabora.com>
In-Reply-To: <34fbb0d7-ee8f-a6d7-4a3e-d64f2f8555ff@microchip.com>
References: <20190924074533.6618-1-tudor.ambarus@microchip.com>
 <20190924074533.6618-9-tudor.ambarus@microchip.com>
 <20191010092117.4c5018a8@dhcp-172-31-174-146.wireless.concordia.ca>
 <34fbb0d7-ee8f-a6d7-4a3e-d64f2f8555ff@microchip.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_230500_450884_7EECA309 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: vigneshr@ti.com, geert+renesas@glider.be, andrew@aj.id.au, richard@nod.at,
 linux-kernel@vger.kernel.org, vz@mleia.com, marek.vasut@gmail.com,
 jonas@norrbonn.se, linux-mtd@lists.infradead.org, joel@jms.id.au,
 miquel.raynal@bootlin.com, matthias.bgg@gmail.com,
 linux-mediatek@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 computersforpeace@gmail.com, dwmw2@infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, 23 Oct 2019 23:39:31 +0000
<Tudor.Ambarus@microchip.com> wrote:

> On 10/10/2019 10:21 AM, Boris Brezillon wrote:
> > External E-Mail
> > 
> > 
> > On Tue, 24 Sep 2019 07:46:18 +0000
> > <Tudor.Ambarus@microchip.com> wrote:
> >   
> >> From: Tudor Ambarus <tudor.ambarus@microchip.com>
> >>
> >> static int write_enable(struct spi_nor *nor)
> >> static int write_disable(struct spi_nor *nor)
> >> become
> >> static int spi_nor_write_enable(struct spi_nor *nor)
> >> static int spi_nor_write_disable(struct spi_nor *nor)
> >>
> >> Check for errors after each call to them. Move them up in the
> >> file as the first SPI NOR Register Operations, to avoid further
> >> forward declarations.  
> > 
> > Same here, split that in 3 patches please.  

In order to keep the number of patch in this series small, I'd
recommend doing all spi_nor_ prefixing in a patch, all function
moves in another one and all error checking in a third patch, instead of
splitting it per-function.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
