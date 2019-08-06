Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED1F839D8
	for <lists+linux-mediatek@lfdr.de>; Tue,  6 Aug 2019 21:50:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5HcY+UneW5y8h3iPlIB2sINccCBRBfqeJ0ge0u3al38=; b=pf4MiCzvLrgaam
	bbrievFDnfrKXaNHVwOmZEe45lYS+h8iiHBBz1Dj5N5B9ZQZd6hJUIivMBo8Rz3syv1BoYIaw6SK5
	Ia07ETkP4QECpz6xbM9LNORD6ZpqqIuCLynviWBcOvBrXXCqMhy1BIEGWU9jOjOmc8tFBoIPG6OrM
	CBhIheX45glIr8jA8e+khrr3JtVSzwDs8YGnyYrLsaMWpXGlsKCAZxH23LE7GbEaxdSbdo1J5hBCy
	ns+XK6isR1/gyh85dxVZZVA9yTrkGiZ5+yMATjgSw4B7MK4VXQadDZwWAE2JeuEnDc2a5rBQVbBqR
	U6t8E12YIFMeFeDbbRuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv5Tm-0001El-JN; Tue, 06 Aug 2019 19:50:42 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv5Ti-0001DU-2p
 for linux-mediatek@lists.infradead.org; Tue, 06 Aug 2019 19:50:40 +0000
Received: by mail-wr1-x442.google.com with SMTP id x1so39150481wrr.9
 for <linux-mediatek@lists.infradead.org>; Tue, 06 Aug 2019 12:50:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kGaKvQFsZgZRc0gqerogxzfGiThuXifNLB2OEC0cIoY=;
 b=KcpdUETMBYuJyx4JKxpCZkDiJd9PgHCJ+KVUsKbiK69I/uNOk1diB7NGlPKuUTgu03
 5bvA0tDzp9uxmVSvU3Lv5Kpo7zoW4UH6UPRVZc6txr//tC1JsGtF6JpWd1zZHIskDlEb
 TiRFuGrOZGzTrirywRRsM6BJdkmLwC1GzPQDKM/xujPh5hjKsBo+NZHsVRyUVRK6xBU2
 vJqGL0IWeQCMCKJQRh7DG0Ngjau29xL3YjVRvzBQoh73f4JOplrpPqhkR0G094ZbQUaY
 Grq5Qh03BfsG/86N1AeD7/6qVYclfLMGsRTp4j/jG1NhjPNzUa1Pc3kMLtmlv43w7HEU
 F9gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kGaKvQFsZgZRc0gqerogxzfGiThuXifNLB2OEC0cIoY=;
 b=Kdv5efUEWNJnKj5bifm9jiwagrC2xWvL6U8TP/viKJrgg3IbmOa9IUZKecaAvkJeAl
 DQXmvbmDdbqWLn/8OPLXWUKZcmJ6VN6knUISv8ulQbjX+NDXXEyoCKeikp3H1L8SCfpB
 aMgVSYbVCz/LjnKMl/XpCYMdoEMJazp9yZnVeq1AwGiv/WE7RMCBc2c/TlZ0bhKS9CBW
 Ce/OubvXhS31Vgs0Q50rImCnAYvFRQWmOglE9b5BK0zwOLIEZ+Nmwc8fYEs66ExF3SfF
 vcRhjJJTP+R+zDEDNIw5ir0pgP8PdfmMxgn44RP68WE8ut9QUEZgB+xO/iejUigrcQQ7
 MDmw==
X-Gm-Message-State: APjAAAVkNsqMk4dk/fr1m+F9VLIo0wEPdomHGQlNStiB9T3ozh9ChLqJ
 CCghabkweqvhgcHWF2OT/o37gW9R1HoZwowAuvK1
X-Google-Smtp-Source: APXvYqyDnhoa/uCrTWnPgUp2jKiHChoqXQq+xQxY9yMjyk5SXnWI/bXZHLptGN4xGZpSOxpD0VQaSeeW0iGW7hI8NOM=
X-Received: by 2002:a5d:6650:: with SMTP id f16mr6385465wrw.89.1565121033666; 
 Tue, 06 Aug 2019 12:50:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190628073425.25165-1-jianjun.wang@mediatek.com>
 <20190628073425.25165-3-jianjun.wang@mediatek.com>
 <1564385918.17211.6.camel@mhfsdcap03>
 <20190806162432.GA15498@e121166-lin.cambridge.arm.com>
In-Reply-To: <20190806162432.GA15498@e121166-lin.cambridge.arm.com>
From: Bjorn Helgaas <bhelgaas@google.com>
Date: Tue, 6 Aug 2019 14:50:20 -0500
Message-ID: <CAErSpo5AVXekj8hWxDbf+zTwv9WmQessdBppNrVtOWOkuTREtA@mail.gmail.com>
Subject: Re: [v2,2/2] PCI: mediatek: Add controller support for MT7629
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_125038_124439_AF93262D 
X-CRM114-Status: GOOD (  23.58  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ryder Lee <ryder.lee@mediatek.com>, Linux PCI <linux-pci@vger.kernel.org>,
 youlin.pei@mediatek.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jianjun Wang <jianjun.wang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Aug 6, 2019 at 11:24 AM Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> [trim the CC list please to keep only required maintainers]
>
> On Mon, Jul 29, 2019 at 03:38:38PM +0800, Jianjun Wang wrote:
> > On Fri, 2019-06-28 at 15:34 +0800, Jianjun Wang wrote:
> > > MT7629 is an ARM platform SoC which has the same PCIe IP with MT7622.
> > >
> > > The HW default value of its Device ID is invalid, fix its Device ID to
> > > match the hardware implementation.
> > >
> > > Acked-by: Ryder Lee <ryder.lee@mediatek.com>
> > > Signed-off-by: Jianjun Wang <jianjun.wang@mediatek.com>
> > > ---
> > >  drivers/pci/controller/pcie-mediatek.c | 18 ++++++++++++++++++
> > >  include/linux/pci_ids.h                |  1 +
> > >  2 files changed, 19 insertions(+)
> > >
> > > diff --git a/drivers/pci/controller/pcie-mediatek.c b/drivers/pci/controller/pcie-mediatek.c
> > > index 80601e1b939e..e5e6740b635d 100644
> > > --- a/drivers/pci/controller/pcie-mediatek.c
> > > +++ b/drivers/pci/controller/pcie-mediatek.c
> > > @@ -73,6 +73,7 @@
> > >  #define PCIE_MSI_VECTOR            0x0c0
> > >
> > >  #define PCIE_CONF_VEND_ID  0x100
> > > +#define PCIE_CONF_DEVICE_ID        0x102
> > >  #define PCIE_CONF_CLASS_ID 0x106
> > >
> > >  #define PCIE_INT_MASK              0x420
> > > @@ -141,12 +142,16 @@ struct mtk_pcie_port;
> > >  /**
> > >   * struct mtk_pcie_soc - differentiate between host generations
> > >   * @need_fix_class_id: whether this host's class ID needed to be fixed or not
> > > + * @need_fix_device_id: whether this host's Device ID needed to be fixed or not
> > > + * @device_id: Device ID which this host need to be fixed
> > >   * @ops: pointer to configuration access functions
> > >   * @startup: pointer to controller setting functions
> > >   * @setup_irq: pointer to initialize IRQ functions
> > >   */
> > >  struct mtk_pcie_soc {
> > >     bool need_fix_class_id;
> > > +   bool need_fix_device_id;
> > > +   unsigned int device_id;
> > >     struct pci_ops *ops;
> > >     int (*startup)(struct mtk_pcie_port *port);
> > >     int (*setup_irq)(struct mtk_pcie_port *port, struct device_node *node);
> > > @@ -696,6 +701,9 @@ static int mtk_pcie_startup_port_v2(struct mtk_pcie_port *port)
> > >             writew(val, port->base + PCIE_CONF_CLASS_ID);
> > >     }
> > >
> > > +   if (soc->need_fix_device_id)
> > > +           writew(soc->device_id, port->base + PCIE_CONF_DEVICE_ID);
> > > +
> > >     /* 100ms timeout value should be enough for Gen1/2 training */
> > >     err = readl_poll_timeout(port->base + PCIE_LINK_STATUS_V2, val,
> > >                              !!(val & PCIE_PORT_LINKUP_V2), 20,
> > > @@ -1216,11 +1224,21 @@ static const struct mtk_pcie_soc mtk_pcie_soc_mt7622 = {
> > >     .setup_irq = mtk_pcie_setup_irq,
> > >  };
> > >
> > > +static const struct mtk_pcie_soc mtk_pcie_soc_mt7629 = {
> > > +   .need_fix_class_id = true,
> > > +   .need_fix_device_id = true,
> > > +   .device_id = PCI_DEVICE_ID_MEDIATEK_7629,
> > > +   .ops = &mtk_pcie_ops_v2,
> > > +   .startup = mtk_pcie_startup_port_v2,
> > > +   .setup_irq = mtk_pcie_setup_irq,
> > > +};
> > > +
> > >  static const struct of_device_id mtk_pcie_ids[] = {
> > >     { .compatible = "mediatek,mt2701-pcie", .data = &mtk_pcie_soc_v1 },
> > >     { .compatible = "mediatek,mt7623-pcie", .data = &mtk_pcie_soc_v1 },
> > >     { .compatible = "mediatek,mt2712-pcie", .data = &mtk_pcie_soc_mt2712 },
> > >     { .compatible = "mediatek,mt7622-pcie", .data = &mtk_pcie_soc_mt7622 },
> > > +   { .compatible = "mediatek,mt7629-pcie", .data = &mtk_pcie_soc_mt7629 },
> > >     {},
> > >  };
> > >
> > > diff --git a/include/linux/pci_ids.h b/include/linux/pci_ids.h
> > > index 70e86148cb1e..aa32962759b2 100644
> > > --- a/include/linux/pci_ids.h
> > > +++ b/include/linux/pci_ids.h
> > > @@ -2131,6 +2131,7 @@
> > >  #define PCI_VENDOR_ID_MYRICOM              0x14c1
> > >
> > >  #define PCI_VENDOR_ID_MEDIATEK             0x14c3
> > > +#define PCI_DEVICE_ID_MEDIATEK_7629        0x7629
> > >
> > >  #define PCI_VENDOR_ID_TITAN                0x14D2
> > >  #define PCI_DEVICE_ID_TITAN_010L   0x8001
> >
> > Hi Bjorn & Lorenzo,
> >
> > Is this patch ok or is there anything I need to fixed?
>
> The commit log need to be fixed and I will do it, the code if
> Bjorn is OK with it I can merge it.

Sure, I'm fine with this.  I don't think there's a need to add
PCI_DEVICE_ID_MEDIATEK_7629, since it's only used in one place, but
I'm fine with the code.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
