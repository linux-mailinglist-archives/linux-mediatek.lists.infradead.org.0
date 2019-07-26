Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB27776012
	for <lists+linux-mediatek@lfdr.de>; Fri, 26 Jul 2019 09:48:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gV+8jZNAuIFuwIgt6fwGSZdMU6OJSFBXRU/EMRY/ReA=; b=asQELiYBf3m9Qa
	MuvGjlK5QrNXLJ74YW21LnmppiW3FYPsVbGdVzRHJFAWDL6yzdNZwribAtyWuyts4OM/RJ/YHz89A
	u4ypHnDNNmP+lYkGztKbCnnSPGytWicngPeO3fHJUXoHgPn04VaroMxbdtjjCLA0zHhlc9IQzzHDr
	Zoqu7uCmigyyJeyQz/v9Rpj+A0zHEec1ExYOjyRIZaf+YX8AEQaUR3RZaSyZ2JYw7iZQO5Qmpn6KW
	xK3bq9sjUxkmN7/a6fqX32mUytkNcKu9GnUQol9AMQJGBOqdmOJYmdoGIYd563bLtriyTLh86YWXz
	6SLDD2Sz2FiGXspqmZOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hquxq-0000TZ-FR; Fri, 26 Jul 2019 07:48:30 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hquxi-0000T6-Nh
 for linux-mediatek@lists.infradead.org; Fri, 26 Jul 2019 07:48:24 +0000
Received: by mail-ed1-x543.google.com with SMTP id v15so52474732eds.9
 for <linux-mediatek@lists.infradead.org>; Fri, 26 Jul 2019 00:48:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZVnIMdlW5ld59nigIKLRvJHeaKWA8dIDfDarP1mW9uY=;
 b=i9++qOzwRPbXujar5MJQzocehC3H4umrtYlWOzNvO927fYQeKQkDVvo8SLyg4mIlGk
 o6pvfweGhYY27xx+rk1G48SH9IU5gf3Fy6oumNOb084qbUBdg8wGD5u7z/2r7aCPrk+h
 w+Bn9/Yh5b0FZRhCgL0ofjnlCfJrsVxD0JotI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZVnIMdlW5ld59nigIKLRvJHeaKWA8dIDfDarP1mW9uY=;
 b=dyzHk+XvszfZ2//jrO27oYZATjnAIntXLsJTnnivJMlMmBhK7hi2+oQIb1l42ZcJ7s
 RBHYkUg8HP23xPDPwF8INizyg294yV7OUgzrP4hjh9cFyM/LvGzyXQwIoZXbKijFivpz
 qjHwRqU2jbKUjRNLLd+IDoAs1Qf8f3fFYraW828V2TvCOMzKOnLGu98PyXx+ikDz3Gv9
 0DOxoiZ/RPsDR3Hmr3qGkElGd2go9g5Xv1nX0Bi0iw1RxYzKYQT/vJaTK/OBOzzfuGoE
 R1xYaJx3YUB3yaPAaVlMBOLiCCDirgbvSg/7jFY6ssd9AcBaqAWVU026dPN1p1gunkVr
 dxrg==
X-Gm-Message-State: APjAAAXzXRfdrgE/oFFPL6zzRgw7YR05usMIQTkyXnbF8fK97en6bmMk
 gpy/cLVtsW8fQSGwsMsoiUH4kZQcg9x8pw==
X-Google-Smtp-Source: APXvYqyox2DpAPRQV3r6Pdne1vdTv64E6IdRu1/KTpRQmwwQJQq8jWWYuKI6TEZrRqetWWxWZuYpRg==
X-Received: by 2002:a17:906:161b:: with SMTP id
 m27mr70497677ejd.203.1564127300070; 
 Fri, 26 Jul 2019 00:48:20 -0700 (PDT)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com.
 [209.85.221.51])
 by smtp.gmail.com with ESMTPSA id l50sm14158296edb.77.2019.07.26.00.48.19
 for <linux-mediatek@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 26 Jul 2019 00:48:19 -0700 (PDT)
Received: by mail-wr1-f51.google.com with SMTP id f9so53308488wre.12
 for <linux-mediatek@lists.infradead.org>; Fri, 26 Jul 2019 00:48:19 -0700 (PDT)
X-Received: by 2002:a5d:5012:: with SMTP id e18mr71567362wrt.166.1564126968020; 
 Fri, 26 Jul 2019 00:42:48 -0700 (PDT)
MIME-Version: 1.0
References: <jungo.lin@mediatek.com>
 <20190611035344.29814-1-jungo.lin@mediatek.com>
 <20190611035344.29814-10-jungo.lin@mediatek.com>
 <20190701072532.GB137710@chromium.org>
 <1562297618.1212.46.camel@mtksdccf07>
 <CAAFQd5BaTQ-Q7gsE0X+d4_81OZq9WHaCYkmALt7_4A1JFo=_8g@mail.gmail.com>
 <1562313579.1212.73.camel@mtksdccf07>
 <CAAFQd5AaNFpMGCVJREY85n8UetEwd99TOka8-ECoLzMbMkos_g@mail.gmail.com>
 <1563870117.1212.455.camel@mtksdccf07>
 <CAAFQd5Bh80N+cMhz=eyHUGJLaE5uuypOawQvHrTgGSMDvmcpLA@mail.gmail.com>
 <20190726074116.GA19745@infradead.org>
In-Reply-To: <20190726074116.GA19745@infradead.org>
From: Tomasz Figa <tfiga@chromium.org>
Date: Fri, 26 Jul 2019 16:42:36 +0900
X-Gmail-Original-Message-ID: <CAAFQd5CXwRm-3jD+rfNNDNLH=gT_i0QYSAG3XBo3SJnPTY56_w@mail.gmail.com>
Message-ID: <CAAFQd5CXwRm-3jD+rfNNDNLH=gT_i0QYSAG3XBo3SJnPTY56_w@mail.gmail.com>
Subject: Re: [RFC,
 v3 9/9] media: platform: Add Mediatek ISP P1 shared memory device
To: Christoph Hellwig <hch@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_004822_805894_C395E389 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org,
 =?UTF-8?B?U2VhbiBDaGVuZyAo6YSt5piH5byYKQ==?= <sean.cheng@mediatek.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 =?UTF-8?B?UnlubiBXdSAo5ZCz6IKy5oGpKQ==?= <rynn.wu@mediatek.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 srv_heupstream <srv_heupstream@mediatek.com>, Rob Herring <robh@kernel.org>,
 =?UTF-8?B?UnlhbiBZdSAo5L2Z5a2f5L+uKQ==?= <ryan.yu@mediatek.com>,
 =?UTF-8?B?RnJhbmtpZSBDaGl1ICjpgrHmloflh7Ep?= <frankie.chiu@mediatek.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, Jungo Lin <jungo.lin@mediatek.com>,
 Sj Huang <sj.huang@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, ddavenport@chromium.org,
 =?UTF-8?B?RnJlZGVyaWMgQ2hlbiAo6Zmz5L+K5YWDKQ==?= <frederic.chen@mediatek.com>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, Jul 26, 2019 at 4:41 PM Christoph Hellwig <hch@infradead.org> wrote:
>
> On Fri, Jul 26, 2019 at 02:15:14PM +0900, Tomasz Figa wrote:
> > Could you try dma_get_sgtable() with the SCP struct device and then
> > dma_map_sg() with the P1 struct device?
>
> Please don't do that.  dma_get_sgtable is a pretty broken API (see
> the common near the arm implementation) and we should not add more
> users of it.  If you want a piece of memory that can be mapped to
> multiple devices allocate it using alloc_pages and then just map
> it to each device.

Thanks for taking a look at this thread.

Unfortunately that wouldn't work. We have a specific reserved memory
pool that is the only memory area accessible to one of the devices.
Any idea how to handle this?

Best regards,
Tomasz

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
