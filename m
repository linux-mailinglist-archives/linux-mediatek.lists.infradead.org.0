Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CB54113D3D
	for <lists+linux-mediatek@lfdr.de>; Thu,  5 Dec 2019 09:44:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/udXlUQBqoz4ADVOT5dMqwsbZd/gKWYTGj5IvoqqZ3I=; b=rCIn0m02snh1Y3
	sNTcyb/ssGFveuc8oYRdEiXb72YOmVRbUF1ZSqmVM8s5QnZDR520Bmy5YxCDNX5Cxm9FQGuQjapSx
	5Y9dpJAP8B2i0LLlu31OfLwzV6T5G6vIEtb1cl0GB1tHgjQLzo78jvqFcm1o1BReOr7vZd3R1I3Eg
	IMSBULm3WaIe0gmC7UnR9uVfoqGSa7yD6wo5/uS5C1xhEtATagSK3B7BgdKDPMCNO2Fc45BGWTFfv
	4Dtwq+7TQXh/826ImCqxjC+zNwnsq0o4Zbu3v+v5ozHdUaiWVvXpxKsopxBeBQq64MxWFuy/MOC8c
	9PW0To5mudjUJ5v0KChg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icmkR-0004Kb-E8; Thu, 05 Dec 2019 08:44:31 +0000
Received: from mail-io1-xd33.google.com ([2607:f8b0:4864:20::d33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icmkO-0004JX-Uq
 for linux-mediatek@lists.infradead.org; Thu, 05 Dec 2019 08:44:30 +0000
Received: by mail-io1-xd33.google.com with SMTP id i11so2703297ioi.12
 for <linux-mediatek@lists.infradead.org>; Thu, 05 Dec 2019 00:44:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wt9G2vozOpMT2hGMgKE0ip5uoYB13lnK1YvlPurVBq4=;
 b=mx51vNNmXng2Ai4iTAblfI1F6ComWE5BNDOYZ4xrxfULaKGleW01zww0J9E6sEvEGm
 lfLcgIvUw/0nKHL3PF9n6k428lWT/lZXzBTmVRVLyRjWQMqUnL/4r42HLnAkItilGkYS
 rEOKRmjE51Iy/fCKvADi2jVYm4ok8Pi5z2RxI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wt9G2vozOpMT2hGMgKE0ip5uoYB13lnK1YvlPurVBq4=;
 b=kNIGTmgbnfLFtzO0Tr6pXIN+T6/RRv6JsyBxs0bhQUD8MgHEoPew6cxa0f7CGLSie6
 AteIXC+IwjbI1ytZQDzBbISOJeM9ovVgaOYDSCt8WAKDOacTHD4Co2/6tJqBD1fRN1QM
 P70OIYAZcKU83xPtvXA8HikIRHCi0c9Vu88YotcVgD/VhnAqwAI4HZLF5EsPXthd2cjE
 kDJmqOhKvvUdWpcbQRLKRTShkmuH19lA8bvpU8Q+6jOzpFOYiTGGIFrGK1DG1zVAm0uI
 LKaH42MZnJ4cJY7RWZib2e6gge8JZciTfCpPivbIF775LCiNiEAWTXPS2LT1vZC5ST62
 FtjA==
X-Gm-Message-State: APjAAAVubyTU+XpZ2m9SVLb2T+mhifBGw41iEON+0LWWWNUdfrY8uOMF
 fNkH2Q9Nig/h7VfjenlQO0PVz1J/AgFCMPVKb0mQhQ==
X-Google-Smtp-Source: APXvYqzsTUeVlvYNSc46o8MgjJIitMPOpzSQhh53SIxsiMDq5akjwRzVyhJ8uX4NGcPMJOsXZfEjVH38FLKYx8LYJGo=
X-Received: by 2002:a5d:8cd6:: with SMTP id k22mr5264840iot.283.1575535467112; 
 Thu, 05 Dec 2019 00:44:27 -0800 (PST)
MIME-Version: 1.0
References: <1574817475-22378-2-git-send-email-yongqiang.niu@mediatek.com>
 <CAJMQK-iDnOWCYmxcREGschD=sDfU6yKpUu+koP3YDeO3MPCdhQ@mail.gmail.com>
 <1575529976.9400.4.camel@mhfsdcap03>
In-Reply-To: <1575529976.9400.4.camel@mhfsdcap03>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Thu, 5 Dec 2019 16:44:01 +0800
Message-ID: <CAJMQK-jGTAm7YS3ov3ok0SkrH7dWEL4umC21O6RSchrfDs5omw@mail.gmail.com>
Subject: Re: [v1,1/2] drm/mediatek: Fixup external display black screen issue
To: Yongqiang Niu <yongqiang.niu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_004428_999262_4D279F41 
X-CRM114-Status: UNSURE (   5.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d33 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 lkml <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 CK Hu <ck.hu@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, Dec 5, 2019 at 3:13 PM Yongqiang Niu <yongqiang.niu@mediatek.com> wrote:
>
> please double confirm is this dump stack log is ruining on MT8173 real
> IC or not.
> if yes, that may caused ovl hang when disable layer not in blanking,
> then cause vblank time out.
> i will disable overlay with cmdq in next version.
>
It is running on MT8173 acer chromebook. Error only happens when
turning off display.
>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
