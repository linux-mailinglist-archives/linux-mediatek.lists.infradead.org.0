Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C53F01D74AF
	for <lists+linux-mediatek@lfdr.de>; Mon, 18 May 2020 12:05:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mnwJXlP2Spga+CIDInSB1zzBpNSmKNjM/y2gX2tWioE=; b=ZGEvFjwNMMTL+i
	HarZnA4ZuRb7aaKkv9MVccrTkSWSNlDPJAcGR6PZWXIet8y49dU22VwQ0PpLQyTz1jq52sLLHWd6O
	bi4sF4itziHlKQurR2Y92Np8I2si/TktZmYTrnuUcLfaWo+clVAPNB32tqsdR9rI00bwHbO95RzRC
	caLMgeFUJgiV4DkKqSYX7mdjjFeYj0PEv9C/Lwh5fJJWkTuHUtkqLI43k5u5PpKH0abdz9Vz0vO1O
	AkQlAzm3OqzcICbduDR9QkXM+96p7dLvdREAnIHkfJkmvnZjsI5qAFwO6C8AOyIQXpLEN+uxImE6s
	ugbmkMKYZDGzZsmuN7Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jacdl-00080E-FO; Mon, 18 May 2020 10:04:57 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jacdi-0007zZ-Ak
 for linux-mediatek@lists.infradead.org; Mon, 18 May 2020 10:04:55 +0000
Received: by mail-io1-xd44.google.com with SMTP id t15so3078665ios.4
 for <linux-mediatek@lists.infradead.org>; Mon, 18 May 2020 03:04:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RKROO8T8T/wRvHNAyo40LMuoZm+6bud6XqpTFz5/h4w=;
 b=fy0kdcuoeSucOVpB37b28WEy2Z7BTjSQPoaSXSZqfWX5PynLzWLa06IIOmSb47HQfk
 Nk7Lz8qUhRmZt6Uqw/+gbocUoU6pJc8rWwzPJwyXSzPNmym88rVnFeD71u5olQiXqTch
 i6vC8EcjOjdQRWfG5xjD03JaXffn85wsZgbw4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RKROO8T8T/wRvHNAyo40LMuoZm+6bud6XqpTFz5/h4w=;
 b=RzHo/c6K+hC2kaVSyNC2EDXk5edan5vCjkcCIrQ5izwt2DNbQmRQdNVlzw9x3rdMn5
 /XhninFLMzvyDkqoOfjum/4CApylEwASWF+nJ4a8gDD6ZeLBFyKS0kLd/3r0aM5h31CK
 htjqb0jFQRxac/b7hpjdAC2CR84iqxPCM4mrEvYbi/KWg4CK7H9/HgOUN151J1n64tHb
 8FCx/oDKqKcuLYsnoJUQi4LDpPim8wcJILq4iTrB2iYwRg6aTVdSvhSv1/+J5mHX78U/
 4RdVxyxFuMijKB531HU1Ys72JTQm0zkoLlZA8f/pfyI8ZT+qBQH0js8GA2hCQ1wc8oI7
 X6zg==
X-Gm-Message-State: AOAM531Fuvn5xq2Q4CM5ae950Z6OfaLJqbrwVHvFfqbNjEnsypy0zsvv
 GFL/Tg7NgS0meSjKOqojaVACKRNU7PQ=
X-Google-Smtp-Source: ABdhPJzsfnRsvnN7NXzF82DKWLsaqoILCoCIQtPq3LkXrQNm+Ok3lffawgT4bOqvq3XM+AgTcRWm8g==
X-Received: by 2002:a5e:8411:: with SMTP id h17mr13802985ioj.1.1589796292756; 
 Mon, 18 May 2020 03:04:52 -0700 (PDT)
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com.
 [209.85.166.182])
 by smtp.gmail.com with ESMTPSA id l3sm1114831iow.55.2020.05.18.03.04.51
 for <linux-mediatek@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 18 May 2020 03:04:51 -0700 (PDT)
Received: by mail-il1-f182.google.com with SMTP id 4so9290431ilg.1
 for <linux-mediatek@lists.infradead.org>; Mon, 18 May 2020 03:04:51 -0700 (PDT)
X-Received: by 2002:a92:b001:: with SMTP id x1mr5174498ilh.18.1589796290578;
 Mon, 18 May 2020 03:04:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200506072314.112409-1-tientzu@chromium.org>
 <20200506072314.112409-2-tientzu@chromium.org>
 <20200515124621.GB1888557@kroah.com>
In-Reply-To: <20200515124621.GB1888557@kroah.com>
From: Claire Chang <tientzu@chromium.org>
Date: Mon, 18 May 2020 18:04:39 +0800
X-Gmail-Original-Message-ID: <CALiNf2_ukL1Ogk3MW5_DSCXHcVxTaE2Rv_JkF+hi7E-8XfrBxw@mail.gmail.com>
Message-ID: <CALiNf2_ukL1Ogk3MW5_DSCXHcVxTaE2Rv_JkF+hi7E-8XfrBxw@mail.gmail.com>
Subject: Re: [PATCH 1/3] serdev: ttyport: add devt for tty port
To: Greg KH <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_030454_386705_2E18E767 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: robh@kernel.org, changqi.hu@mediatek.com,
 lkml <linux-kernel@vger.kernel.org>, long.cheng@mediatek.com,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 linux-serial@vger.kernel.org, jslaby@suse.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 8:46 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Wed, May 06, 2020 at 03:23:12PM +0800, Claire Chang wrote:
> > serial_match_port() uses devt to match devices. However, when serdev
> > registers a tty port, devt has never been set. This makes
> > device_find_child() always return NULL.
> >
> > Assign devt in serdev_tty_port_register() to fix this.
> >
> > Signed-off-by: Claire Chang <tientzu@chromium.org>
> > ---
> >  drivers/tty/serdev/serdev-ttyport.c | 2 ++
> >  1 file changed, 2 insertions(+)
>
> So is existing code broken because of this?  Or does no one ever call
> device_find_child() on this?  Who needs/uses this?
>
> thanks,
>
> greg k-h

I'm not sure. Our use case is to control the wake on bluetooth
behavior by the power/wakeup node.

`readlink -f /sys/class/bluetooth/hci0`
/sys/devices/platform/soc/11003000.serial/serial0/serial0-0/bluetooth/hci0

and we'd like to use
`/sys/devices/platform/soc/11003000.serial/serial0/power/wakeup` to
decide whether to enable the in-band wakeup on uart host side.

Thanks,
Claire

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
