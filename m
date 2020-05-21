Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50FDF1DD61D
	for <lists+linux-mediatek@lfdr.de>; Thu, 21 May 2020 20:38:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3YokKAIkd3UkxKSDzCuqgHx/UPwDmEsNeqtLX1Dgnp0=; b=mBZOV9TBm8dpgi
	fhr2xiRwt6IMRT/6GL1KSnsH1Gnl6d8ZQkMYHoDl+myvZmQ+HpcnF8adpknBhf4Y3uIVYHRA/zxl0
	ifv9NX3Q3DAK9lHTl/u7uonDOBHulEFYi9aEXesA33CGbW0cPjsKD9B/ppA4ADiiJ06LUlP8kST/f
	jdeFTaTX6efuhjw91tNxjZ7MRhaWtFzmGcwO7OPm+6dynZk4WPY4G3x5iu4RSzyas/EunQVwlOWEm
	zKi6WNl+0wB+JR1ck1R80lSUe8AsK48GGmHb1lZQko4+cUcu0x+8+VAoJsSDg+IsbXBqTPKlHTbZQ
	x+nxjtwKDHewi8DVundA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbq5f-00027u-2Q; Thu, 21 May 2020 18:38:47 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbq5O-0001wQ-2J
 for linux-mediatek@lists.infradead.org; Thu, 21 May 2020 18:38:31 +0000
Received: by mail-wr1-x443.google.com with SMTP id r3so5755799wrn.11
 for <linux-mediatek@lists.infradead.org>; Thu, 21 May 2020 11:38:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=LNC3H7rEKUYKmtw+FfHQGSZX2sVQSBHXnVoTDU42qPY=;
 b=JbuLznLZl83UGj+x/fv3TrhYsAe9fNCLffilc1K7DaqA3D+B14saAOvfrK+QCf2bVO
 IdXHbRkvxXsIhfUlHcmLoIANGHGoULOdn3m21jPRcnbpboq620j9KzSmlU+tregxxFDZ
 33xdGc7iUxca+LR96EHtwLNYzCgvk9Dgr2u5M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=LNC3H7rEKUYKmtw+FfHQGSZX2sVQSBHXnVoTDU42qPY=;
 b=NM6sW+ydVmSFuIuw5biC1ngQV6fY9mqymh3mUDX4vPnU5t/QKP9tsNa7+vrdeoI2Ml
 j/yncWDcyiKQd4cFRYpOxc0OZLwnigZqWG046907beUU7HXBpNzKjOV1NzdBZO82mmd3
 iPWHTqUpUmAOR2RmnwNPt+ZiUSnjFdUcP1F0h/qaGwlKwmwm1WxoeHQK8wtw37rZfPez
 /2vaIFwv3UGYMyQqFpFTIbmea2aHeKOmRpgF5rL7DapqMiSxOQGP4c9bZLryL7KrSaTw
 VCuL6Rz/Pk6eZ+2NgMhl7UwJML8Rx0YiAyJ0UnEJEsjQIHOtq/3t4+PEpKG5q/kj3Ia1
 EOyQ==
X-Gm-Message-State: AOAM531ltLnQVOD32UHSaCL/Wt/nyujfgaKP3F6VYZIvtCD4JiyOJMPM
 f1AvqhHrTzi4P2WorRBimWi8sg==
X-Google-Smtp-Source: ABdhPJx+mMeFfjdw27k0v6HQGzNGMS5EzIHJarokhlVRpcdV62wWUZ44xVDdvCqxSbWyifL0JHBSqA==
X-Received: by 2002:adf:e749:: with SMTP id c9mr3070276wrn.25.1590086307624;
 Thu, 21 May 2020 11:38:27 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id j2sm7127697wrp.47.2020.05.21.11.38.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 May 2020 11:38:26 -0700 (PDT)
Date: Thu, 21 May 2020 18:38:25 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Jerry-ch Chen <Jerry-ch.Chen@mediatek.com>
Subject: Re: [RFC PATCH V4 0/4] media: platform: Add support for Face
 Detection (FD) on mt8183 SoC
Message-ID: <20200521183825.GB249683@chromium.org>
References: <20191204124732.10932-1-Jerry-Ch.chen@mediatek.com>
 <1588903371.16825.14.camel@mtksdccf07>
 <CAAFQd5CP+gH3zG9fejBv_hTzeAExMoY+L38W8e4e3OSc-gVRHg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAFQd5CP+gH3zG9fejBv_hTzeAExMoY+L38W8e4e3OSc-gVRHg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_113830_128205_5F7C9554 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Sean Cheng =?utf-8?B?KOmEreaYh+W8mCk=?= <Sean.Cheng@mediatek.com>,
 "laurent.pinchart+renesas@ideasonboard.com"
 <laurent.pinchart+renesas@ideasonboard.com>,
 "zwisler@chromium.org" <zwisler@chromium.org>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 Christie Yu =?utf-8?B?KOa4uOmbheaDoCk=?= <christie.yu@mediatek.com>,
 Jungo Lin =?utf-8?B?KOael+aYjuS/iik=?= <jungo.lin@mediatek.com>,
 Sj Huang =?utf-8?B?KOm7g+S/oeeSiyk=?= <sj.huang@mediatek.com>,
 "yuzhao@chromium.org" <yuzhao@chromium.org>,
 "hans.verkuil@cisco.com" <hans.verkuil@cisco.com>,
 "pihsun@chromium.org" <pihsun@chromium.org>,
 Frederic Chen =?utf-8?B?KOmZs+S/iuWFgyk=?= <Frederic.Chen@mediatek.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "mchehab@kernel.org" <mchehab@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Jerry,

On Wed, May 13, 2020 at 11:45:37PM +0200, Tomasz Figa wrote:
> Hi Jerry,
> 
> On Fri, May 8, 2020 at 4:03 AM Jerry-ch Chen <Jerry-ch.Chen@mediatek.com> wrote:
> >
> > Hi Laurent, Tomasz, Matthias,
> >
> > gentle ping for this patch set,
> > If no new comments, I would like to send a newer version.
> >
> 
> Sorry, I still haven't had a chance to look at the series, so feel
> free to send a new version and I will take a look at the new one.
> 

Finally found some time to review the series. Again sorry for the delay
and thanks for your patience.

Some general comments:
1) The metadata format FourCC should be added in a separate patch,
together with documentation for it.
2) Control IDs, structs used by the userspace, etc. should be defined in
a header under include/uapi/linux.

Please also check my replies to particular patches for further comments.

Best regards,
Tomasz

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
