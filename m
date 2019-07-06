Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC428612DB
	for <lists+linux-mediatek@lfdr.de>; Sat,  6 Jul 2019 21:48:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m0r19TlPq83HvvBThzOTcvSDzUBZN8dMp4wUEBKMvVI=; b=CyJiE7HKJaJSZr
	Wy4J/UZqhOxW8L2uQlbEsEGJKZ5SSpxpnVRuR90QSn4qdzTSCOjhBmpRDzLejAIjpq75P8ME5SuKc
	oMr7/0IuhjtbfXF1WqyiofpqqUYhrSDIOuObgYo+aLL/YjJ3iTTs3+nsiTa0nBGsDHQPBtPhQ1Ohi
	c/WyHX/891TGNEfbk9R1jrdnamve46h/ShFkhufxz0VgbFxH45TGekdAOLr5ykwnYFhB85yh1SR+A
	9CxKk9IWtOn/61DOoD9FQtENX6US3PZxc9aOzEEFLE+MK8v2pNSIU1+mzqM9M4NUhTyDKMNGqn6fF
	6/9ONbxubq51600JXUdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjqf6-0003lK-HL; Sat, 06 Jul 2019 19:47:56 +0000
Received: from coyote.holtmann.net ([212.227.132.17] helo=mail.holtmann.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hjqf3-0003kI-Jy
 for linux-mediatek@lists.infradead.org; Sat, 06 Jul 2019 19:47:55 +0000
Received: from [192.168.1.175] (apn-37-247-209-172.dynamic.gprs.plus.pl
 [37.247.209.172])
 by mail.holtmann.org (Postfix) with ESMTPSA id 288F5CF165;
 Sat,  6 Jul 2019 21:54:20 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH v7 0/2] Bluetooth: btusb: Add protocol support for
 MediaTek USB devices
From: Marcel Holtmann <marcel@holtmann.org>
In-Reply-To: <1559433769-23749-1-git-send-email-sean.wang@mediatek.com>
Date: Sat, 6 Jul 2019 21:45:31 +0200
Message-Id: <CB48D0A4-0564-42A6-847F-08E64AAF4842@holtmann.org>
References: <1559433769-23749-1-git-send-email-sean.wang@mediatek.com>
To: Sean Wang <sean.wang@mediatek.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190706_124753_809714_B6CFAE1C 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.132.17 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-bluetooth@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Johan Hedberg <johan.hedberg@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Sean,

> v7:
> * rebase to latest code base.
> 
> v6:
> * fix drivers/bluetooth/btusb.c:2683:2-3: Unneeded semicolon based reported by [1]
> * update power-on sequence with adding neccesary tci sleep comand to set up
>  low-power environmnet and a delay to wait the device to be stable.
> * sort variables declarations in reverse xmas order.
> 
> [1]
> http://lists.infradead.org/pipermail/linux-mediatek/2019-January/017017.html
> 
> v5:
> * rebase to latest code base.
> * change the subject prefix.
> * change the place the firmware located at.
> 
> v4:
> * use new BTUSB_TX_WAIT_VND_EVT instead of BTMTKUSB_TX_WAIT_VND_EVT
>  to avoid definition conflict and to fix bulk data transfer fails.
> * use the bluetooth-next as the base
> 
> v3:
> add fixes and enhancements based on [1]
> * reuse flags and evt_skb btusb already had
> * add ctrl_anchor and the corresponding handling
> * apply mtk specific recv function
> * add more comments explaining wmt ctrl urbs behavior.
> 
> [1]
> http://lists.infradead.org/pipermail/linux-mediatek/2018-August/014724.html
> 
> v2:
> 
> add fixes and enhancements based on [1]
> * include /sys/kernel/debug/usb/devices portion in the commit message.
> * turn default into n for config BT_HCIBTUSB_MTK in Kconfig
> * only add MediaTek support to btusb.c
> * drop cmd_sync callback usage
> * use __hci_cmd_send to send WMT commands
> * add wait event handling similar to what is being done in btmtkuart.c
> * submit a control IN URB similar to interrupt IN URB on demand for the WMT
>  commands during setup 
> * add cosmetic changes
> 
> [1]
> http://lists.infradead.org/pipermail/linux-mediatek/2018-August/014650.html
> http://lists.infradead.org/pipermail/linux-mediatek/2018-August/014656.html
> 
> v1:
> 
> This adds the support of enabling MT7668U and MT7663U Bluetooth
> function running on the top of btusb driver. The patch also adds
> a newly created file mtkbt.c able to be reused independently from
> the transport type such as UART, USB and SDIO.
> 
> Sean Wang (2):
>  Bluetooth: btusb: Add protocol support for MediaTek MT7668U USB
>    devices
>  Bluetooth: btusb: Add protocol support for MediaTek MT7663U USB
>    devices
> 
> drivers/bluetooth/Kconfig |  11 +
> drivers/bluetooth/btusb.c | 581 ++++++++++++++++++++++++++++++++++++++
> 2 files changed, 592 insertions(+)

both patches have been applied to bluetooth-next tree.

Regards

Marcel


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
