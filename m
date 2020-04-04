Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB86F19E204
	for <lists+linux-mediatek@lfdr.de>; Sat,  4 Apr 2020 03:01:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pb0fkUu4P+w+6hpZTESOObB2qxf3G24QVdAoXzuZAJI=; b=sNoZy9UQuL2r1b
	gTZHy1WWzEHrEkCPC1V+2W1S2JH/WpLzJ3VQir9J/ZgnO9gLQxXsfBNUQhD0T/1IFUp2S9hCmJC6L
	9pODnnLEWG5VY8aS4HjIOcMy9oI8DJR6jeLugsg7rFikGZBvk5Wz2xF1DUyFr4eRSKpT9FzXjEXIH
	IxV+Zz0DgCXutR1iEFlejdZKfGV+ZOwrZS3uGIzHQzogu4VZNmk2/EVGIkl1hyy4IAqzno6N2kpsG
	d0GlTFchg0gvrWaPFticJxdquPDtCt7z5ofpVHiaXGOOhArfeQEz44I9x/MYZFHClhI/WEKewr+IU
	PfjYIFRAwroHVma+8LXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKXB9-0000ik-Fv; Sat, 04 Apr 2020 01:00:55 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKXB5-0000iH-OE
 for linux-mediatek@lists.infradead.org; Sat, 04 Apr 2020 01:00:53 +0000
Received: by mail-pj1-x1043.google.com with SMTP id np9so3836338pjb.4
 for <linux-mediatek@lists.infradead.org>; Fri, 03 Apr 2020 18:00:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=O6b2gnL33BXhVFyfbJth5+UU7eciSHYX3oxtDKEDuDA=;
 b=alUJeSWDQbazGmCHaD3vGtuEij3VFxX3HTi56q8fbqaiBp7/Y6J7p4a0acMrl7kInW
 X0JbVTtUVvSwa+p2769ApqQW7OcZsWyXCQkuQCxepnyx8UF3+h0nm3E2wSbAjzoh6pmH
 YX5cL9Gly/HX3522R8CBtJKjQTggV2WVU4SLc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=O6b2gnL33BXhVFyfbJth5+UU7eciSHYX3oxtDKEDuDA=;
 b=WLyft3W0Wpq+jAuvjT3RtwjT0HCWk73x8Ym711MZV6LzZOnTO3PmMxU7gdoJg0+G9i
 ExXDTVWOHQAIH1Was630ceMDqs7H28Jfb66xwzGqPhFwuLTFs5Ga7B2wz2t2UoBlgbgs
 gL7/wAD8RF8qm/H4bhKgzWyE70ofKERQw5NgKXhdbzjIspVOG0KdJbmrFt7z1c/FYlR0
 ZuRsIfm7N0A8L4LfXP0+azumUfgX10C6JJGzpS/wNcTMQkyE+XLN+wuzk07jf4/CW5sT
 sbbRDVuC8bd7HKgTB2cTB7sT4vuEerbsAom/8Y8hgBECan4AU9uc0Dbapd2WqgCH5RiX
 fX3Q==
X-Gm-Message-State: AGi0PuapHeDqoN2WrMfsx6NjdwEy7yab/C63yuC5tgcZG/OgV3HnE3Rt
 hMR44dunynNElZtIcJvIW3BDBJtH8c4T6w==
X-Google-Smtp-Source: APiQypI6o5kuh4eQbB8VRFG3z9WB+c1qmOis2fs8RYNwFJzZPma+hLBUyVrsxyGUgnsatZZANaIKdA==
X-Received: by 2002:a17:90a:224e:: with SMTP id
 c72mr12946449pje.175.1585962048825; 
 Fri, 03 Apr 2020 18:00:48 -0700 (PDT)
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com.
 [209.85.215.170])
 by smtp.gmail.com with ESMTPSA id h34sm3403937pjb.47.2020.04.03.18.00.47
 for <linux-mediatek@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 03 Apr 2020 18:00:48 -0700 (PDT)
Received: by mail-pg1-f170.google.com with SMTP id d17so4449741pgo.0
 for <linux-mediatek@lists.infradead.org>; Fri, 03 Apr 2020 18:00:47 -0700 (PDT)
X-Received: by 2002:a1f:e546:: with SMTP id c67mr8715562vkh.38.1585962045690; 
 Fri, 03 Apr 2020 18:00:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200403052900.258855-1-evanbenn@chromium.org>
 <20200403162742.v2.2.Ia92bb4d4ce84bcefeba1d00aaa1c1e919b6164ef@changeid>
 <CAODwPW_iSK_d6EHCk7QUVF7=bHVLuUYHX5mfapf+yeyuHHdNZA@mail.gmail.com>
In-Reply-To: <CAODwPW_iSK_d6EHCk7QUVF7=bHVLuUYHX5mfapf+yeyuHHdNZA@mail.gmail.com>
From: Evan Benn <evanbenn@chromium.org>
Date: Sat, 4 Apr 2020 12:00:18 +1100
X-Gmail-Original-Message-ID: <CAKz_xw3W3xWBfspj0DmbR-p8qF9A+sSsuT_euqmYNbx=47HpoQ@mail.gmail.com>
Message-ID: <CAKz_xw3W3xWBfspj0DmbR-p8qF9A+sSsuT_euqmYNbx=47HpoQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] watchdog: Add new arm_smd_wdt watchdog driver
To: Julius Werner <jwerner@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_180051_811267_B644B613 
X-CRM114-Status: GOOD (  14.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Will Deacon <will@kernel.org>,
 Xingyu Chen <xingyu.chen@amlogic.com>, Rob Herring <robh@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Anson Huang <Anson.Huang@nxp.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Valentin Schneider <valentin.schneider@arm.com>,
 Guenter Roeck <linux@roeck-us.net>,
 LINUX-WATCHDOG <linux-watchdog@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Olof Johansson <olof@lixom.net>, Shawn Guo <shawnguo@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Sat, Apr 4, 2020 at 9:56 AM Julius Werner <jwerner@chromium.org> wrote:
>
> > +       wdd->info = &smcwd_info;
> > +       /* get_timeleft is optional */
> > +       if (smcwd_call(SMCWD_GET_TIMELEFT, 0, NULL))
>
> How is this supposed to work? A firmware that implements this call
> would return the time left here which may not be 0 (maybe the watchdog
> was already primed by the bootloader or whatever), so smcwd_call()
> would interpret it as an error.
>
> I think the cleanest solution would be to stick to the same return
> codes in a0 and use a1 to report the time left when a0 is
> PSCI_SUCCESS. This is more consistent with SMCWD_INIT too.

Yes you are right, I have the wrong return code in the get_timeleft
implementation. It should use ->a1 for the actual timeleft, a0 is for
the error code.

Here smcwd_call returns the error code, which is NOT_IMPLEMENTED if
the firmware does not implement timeleft. The timeleft itself cannot
return error codes else we would just return that there I guess.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
