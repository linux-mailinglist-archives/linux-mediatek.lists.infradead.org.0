Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC29641F90
	for <lists+linux-mediatek@lfdr.de>; Wed, 12 Jun 2019 10:47:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CKz03eyh9qkZWA9cWE/w1N7WS8YNJkmA5JN1nQMrQlQ=; b=sjgfioKjJK3v6L
	CrwnV99f1YE6KYoSibKHdgeTfX23RbKNNZuZs123UJSl5aU1bovG+tXdhqRQ1N465vCKtaQZQ5w4q
	zxEeZRQzekG6JSf2Ph1tEWoSrozesEUuvvi8ZQkPsNbc8zgGHoU9rsCnPnNKKtpRa6iH9VFrxYGdT
	MTYXwZTAumHDw63L8hJYBDbTQT4lm6VC59CHloch58ekcqGDujU/cs6Bu77Mu2Tk39VL1BiagYCS3
	z2oXHztnNX/WmhXSlQDxWL6ajD/Zjcg44yUo/6YCwfbE8FKaS4S7239vhz6t0C4qzIGhLWVFoXGs9
	ApjAEynqONNjmohq29fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hayub-0002od-Pz; Wed, 12 Jun 2019 08:47:17 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hayuY-0002ny-1U; Wed, 12 Jun 2019 08:47:15 +0000
X-UUID: 430e33b375204cc2a344e814a276dcdd-20190612
X-UUID: 430e33b375204cc2a344e814a276dcdd-20190612
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 65058086; Wed, 12 Jun 2019 00:46:49 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 12 Jun 2019 01:46:47 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by mtkmbs07n1.mediatek.inc
 (172.21.101.16) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Wed, 12 Jun 2019 16:46:46 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 12 Jun 2019 16:46:45 +0800
Message-ID: <1560329205.3255.17.camel@mhfsdcap03>
Subject: Re: [PATCH] mtu3: fix setup packet response for HNP and SRP request
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Macpaul Lin <macpaul.lin@mediatek.com>
Date: Wed, 12 Jun 2019 16:46:45 +0800
In-Reply-To: <1560320892-30551-1-git-send-email-macpaul.lin@mediatek.com>
References: <1560320892-30551-1-git-send-email-macpaul.lin@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_014714_087943_605622F6 
X-CRM114-Status: GOOD (  16.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: wsd_upstream@mediatek.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Macpaul,

On Wed, 2019-06-12 at 14:28 +0800, Macpaul Lin wrote:
> 1. Add OTG_HNP_REQD and OTG_SRP_REQD definitions in ch9.h.
> 2. When OTG_HNP_REQD and OTG_SRP_REQD has been received,
> usb hardware must not enter TEST mode but need to response setup packet.
> 3. Add otg_srp_reqd and otg_hnp_reqd in struct ssusb_mtk for futher
> implementation.
> 
> Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
> ---
>  drivers/usb/mtu3/mtu3.h            |  4 ++++
>  drivers/usb/mtu3/mtu3_gadget_ep0.c | 13 +++++++++++++
>  include/uapi/linux/usb/ch9.h       |  5 +++++
>  3 files changed, 22 insertions(+)
The driver currently doesn't support HNP/SRP, so there will be something
wrong when connected with PET to run compliance test, and I prefer not
to support it, because it's rarely used in normal case, thanks

> 
> diff --git a/drivers/usb/mtu3/mtu3.h b/drivers/usb/mtu3/mtu3.h
> index 76ecf12fdf62..bb8a31bc6e4d 100644
> --- a/drivers/usb/mtu3/mtu3.h
> +++ b/drivers/usb/mtu3/mtu3.h
> @@ -226,6 +226,8 @@ struct otg_switch_mtk {
>   * @dma_clk: dma_bus_ck clock for AXI bus etc
>   * @dr_mode: works in which mode:
>   *		host only, device only or dual-role mode
> + * @otg_srp_reqd: used for SRP request handling.
> + * @otg_hnp_reqd: used for HNP request handling.
>   * @u2_ports: number of usb2.0 host ports
>   * @u3_ports: number of usb3.0 host ports
>   * @u3p_dis_msk: mask of disabling usb3 ports, for example, bit0==1 to
> @@ -252,6 +254,8 @@ struct ssusb_mtk {
>  	/* otg */
>  	struct otg_switch_mtk otg_switch;
>  	enum usb_dr_mode dr_mode;
> +	bool otg_srp_reqd;
> +	bool otg_hnp_reqd;
>  	bool is_host;
>  	int u2_ports;
>  	int u3_ports;
> diff --git a/drivers/usb/mtu3/mtu3_gadget_ep0.c b/drivers/usb/mtu3/mtu3_gadget_ep0.c
> index 4da216c99726..1247c43a63e6 100644
> --- a/drivers/usb/mtu3/mtu3_gadget_ep0.c
> +++ b/drivers/usb/mtu3/mtu3_gadget_ep0.c
> @@ -285,11 +285,24 @@ static int handle_test_mode(struct mtu3 *mtu, struct usb_ctrlrequest *setup)
>  		dev_dbg(mtu->dev, "TEST_PACKET\n");
>  		mtu->test_mode_nr = TEST_PACKET_MODE;
>  		break;
> +	case OTG_SRP_REQD:
> +		dev_dbg(mtu->dev, "OTG_SRP_REQD\n");
> +		mtu->ssusb->otg_srp_reqd = 1;
> +		break;
> +	case OTG_HNP_REQD:
> +		dev_dbg(mtu->dev, "OTG_HNP_REQD\n");
> +		mtu->ssusb->otg_hnp_reqd = 1;
> +		break;
>  	default:
>  		handled = -EINVAL;
>  		goto out;
>  	}
>  
> +	if (mtu->ssusb->otg_srp_reqd || mtu->ssusb->otg_hnp_reqd) {
> +		mtu->ep0_state = MU3D_EP0_STATE_SETUP;
> +		goto out;
> +	}
> +
>  	mtu->test_mode = true;
>  
>  	/* no TX completion interrupt, and need restart platform after test */
> diff --git a/include/uapi/linux/usb/ch9.h b/include/uapi/linux/usb/ch9.h
> index d5a5caec8fbc..545918c83fd1 100644
> --- a/include/uapi/linux/usb/ch9.h
> +++ b/include/uapi/linux/usb/ch9.h
> @@ -143,6 +143,11 @@
>  #define	TEST_SE0_NAK	3
>  #define	TEST_PACKET	4
>  #define	TEST_FORCE_EN	5
> +/*
> + * OTG HNP and SRP REQD
> + */
> +#define	OTG_SRP_REQD	6
> +#define	OTG_HNP_REQD	7
>  
>  /* Status Type */
>  #define USB_STATUS_TYPE_STANDARD	0



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
