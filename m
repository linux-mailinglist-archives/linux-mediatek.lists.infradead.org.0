Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB911F3DE1
	for <lists+linux-mediatek@lfdr.de>; Tue,  9 Jun 2020 16:21:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j8SIU9CVr1z95J0MTWUA2WFLEwUAvx0DxZ3SZMHIfes=; b=bUGlEKFeGyGbd3
	DIBBcZK+bYlA9BNjf4p8W+i6HMBqaa/iQna1hpAq8n3JkiKSgzonULvoyywwDvEn2WY0ybGGyEgji
	oN91ZcZoFgrezegE49dhYX4W77yG+OBbJwNMxZVx3qCh5PlSOsYaeAzXHzvxiIIbKshAE78l6I8hw
	0eMYJVpGOd7L4VEQYt5kbzjG0scAl3mfeOjk+g4QcbCVyOKoQISKvFY1GgO9KW3+7zDL0wKxIdPnH
	03u6eziWIZvtL8gxWKqILBUtFTFk4GWexNJkNh1gT6FUFejzNEqYY4uWSNHMcy+TL3kDGcakDJTnb
	mCSA7NNjK/B0lBFVIi/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jif7n-0007qe-Ev; Tue, 09 Jun 2020 14:21:11 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jif7h-0007pY-6m
 for linux-mediatek@lists.infradead.org; Tue, 09 Jun 2020 14:21:08 +0000
Received: from mailhost.synopsys.com (us03-mailhost1.synopsys.com [10.4.17.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 00DF4C03B6;
 Tue,  9 Jun 2020 14:21:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1591712463; bh=dTosrzgZ1auDLU0m9kPUJt1eMM8mQUmMkL8wDLU/+CE=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=JSvuWSCsGg+fE+vVndian0cSRmEgI4XH48rD8HHeLXFSWLTlvhKXclXtsbmpvBNan
 xOBq/xf0JGruu0xneT/pPTVmgqAgTg6eVUg/+RPOPtsRkSMQPEEf+M/13EhymtUUoH
 mZshrAhWCzUdgtHaD8yo1Cp1DOk7ScfMG8dErUAofmOqdV+/S7A9bBhmVjo6TE4Ebf
 fNHTrtKEkNDpb2VHgNtNywBQnjcteKOhIBxO5OoV6Kk3IOPM4FS9gmsaeFRq41Gwhf
 7Q8dmhPjlgYReapX1Qgp04bf3ak+htRtkO6rVILJ9mh+Bz+eUFRJm1O6RROm4iBfbi
 NpfDITWhd4Agg==
Received: from o365relay-in.synopsys.com (sv2-o365relay3.synopsys.com
 [10.202.1.139])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 56013A0081;
 Tue,  9 Jun 2020 14:21:02 +0000 (UTC)
Authentication-Results: o365relay-in.synopsys.com;
 spf=pass (mailfrom) smtp.mailfrom=synopsys.com
 (client-ip=104.47.55.100; helo=nam10-mw2-obe.outbound.protection.outlook.com;
 envelope-from=joabreu@synopsys.com; receiver=<UNKNOWN>)
Authentication-Results: o365relay-in.synopsys.com;
 dmarc=pass (p=reject dis=none) header.from=synopsys.com
Authentication-Results: o365relay-in.synopsys.com; dkim=pass (1024-bit key;
 unprotected) header.d=synopsys.com header.i=@synopsys.com header.b="XYd4KrBr";
 dkim-atps=neutral
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10lp2100.outbound.protection.outlook.com [104.47.55.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client CN "mail.protection.outlook.com",
 Issuer "GlobalSign Organization Validation CA - SHA256 - G3" (verified OK))
 by o365relay-in.synopsys.com (Postfix) with ESMTPS id 671AD40063;
 Tue,  9 Jun 2020 14:21:00 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OQ0k9C1lc4RcYtNkua4/PbwJGmTPybR2poX+IetRoIdLHVHsXB7pQnGsT9qR8Fhl012XXVxcGNr1aCUyZ/7izeQcbt6sUnVJjC9MnH/RzKikbNDV6SmxKyl1QE7OxkzcG8Zwz2l2ED75V5XobrKpUe+tv93oWAjTy5HU8H2ARPbYbwF34e9CaHgUdTuofmwvL103vnjIvRzwttVHsQi/5nfwH/T9MqwpVBS4vKy7uFIoNP49majCmhxn0zgZa3wKnLUK9xxrBOI4GuZdYJNjEzVEK29Neh8ldp95f3ZExIeBFzwW4y9OlkElK8ptcW6x2UAdt3ek8NSpjwEaNEVOOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fm/GXIKIxzuPcLFZUspm2+JU2r2MIqrPw5wUTuZFl4Y=;
 b=jYMlWhBIDb7A++3MwcL2ozNcFus64swyuwiHaBVx0PvY7nGVF3bU0t/CQg5U9lzhJCkaltNYQ41iMowr2p3Y2Bi4tcNzedQoxQ0HTGhD60hOitOkTqRCIGlnpBnYQiLexJto/nPuRZ6qRR8aCnhuDePeO+GQEywIwoMAl6vl/looPlxfYPl1LnfUwGd+qD/5YaVWY9OzIsHZZspsRIvIetivWVQCky6bH6O4Vs/25Cg7eZpvCNQ65UH+KaCow5aXgfhGRIrVgoXLYuqzqn9eEbxqxYH/l7JANowZAXgHVNefBU56duOt+hHUxaxSvtCaKZ9F2R0Mtzb3CZ6BieBuNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fm/GXIKIxzuPcLFZUspm2+JU2r2MIqrPw5wUTuZFl4Y=;
 b=XYd4KrBr4rgeGzgapD1Vxoz0ZUlWziGkna9J6O32OinMLcE5KZrad4P9LTmsWnDzFizBAAfBwdVwbu62j7YAGa7uqTQ7lLwe5NU+PZjkuOVbb1h1p3TYmUmX72cFSwkl2GY+VQYDRVWW18BxaSW3YheQsnaYbR/vHwOLw8GXJxs=
Received: from BN6PR12MB1779.namprd12.prod.outlook.com (2603:10b6:404:108::21)
 by BN6PR12MB1299.namprd12.prod.outlook.com (2603:10b6:404:1d::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.18; Tue, 9 Jun
 2020 14:20:59 +0000
Received: from BN6PR12MB1779.namprd12.prod.outlook.com
 ([fe80::f0ab:1cc3:95dc:caa4]) by BN6PR12MB1779.namprd12.prod.outlook.com
 ([fe80::f0ab:1cc3:95dc:caa4%8]) with mapi id 15.20.3088.018; Tue, 9 Jun 2020
 14:20:59 +0000
X-SNPS-Relay: synopsys.com
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Biao Huang <biao.huang@mediatek.com>, Giuseppe Cavallaro
 <peppe.cavallaro@st.com>, Alexandre Torgue <alexandre.torgue@st.com>, "David
 S . Miller" <davem@davemloft.net>
Subject: RE: [PATCH] net: stmmac: Fix RX Coalesce IOC always true issue
Thread-Topic: [PATCH] net: stmmac: Fix RX Coalesce IOC always true issue
Thread-Index: AQHWPkKKXZ3xttNf8ES5nXitJQQIzqjQVajg
Date: Tue, 9 Jun 2020 14:20:58 +0000
Message-ID: <BN6PR12MB1779E6EF20FD8F5F3255CCE8D3820@BN6PR12MB1779.namprd12.prod.outlook.com>
References: <20200609094133.11053-1-biao.huang@mediatek.com>
In-Reply-To: <20200609094133.11053-1-biao.huang@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: =?us-ascii?Q?PG1ldGE+PGF0IG5tPSJib2R5LnR4dCIgcD0iYzpcdXNlcnNcam9hYnJldVxh?=
 =?us-ascii?Q?cHBkYXRhXHJvYW1pbmdcMDlkODQ5YjYtMzJkMy00YTQwLTg1ZWUtNmI4NGJh?=
 =?us-ascii?Q?MjllMzViXG1zZ3NcbXNnLTZlYzIxYmU4LWFhNWMtMTFlYS1iNjRkLWY0ZDEw?=
 =?us-ascii?Q?OGU2NmE0NFxhbWUtdGVzdFw2ZWMyMWJlYS1hYTVjLTExZWEtYjY0ZC1mNGQx?=
 =?us-ascii?Q?MDhlNjZhNDRib2R5LnR4dCIgc3o9IjUwMSIgdD0iMTMyMzYxODYwNTcwMzA1?=
 =?us-ascii?Q?MzkzIiBoPSI0dXNLeDd4UGpXdTJUcVdWckx5bldITTduZTQ9IiBpZD0iIiBi?=
 =?us-ascii?Q?bD0iMCIgYm89IjEiIGNpPSJjQUFBQUVSSFUxUlNSVUZOQ2dVQUFCUUpBQUJ4?=
 =?us-ascii?Q?VXhveGFUN1dBUW53alZmRk40UWVDZkNOVjhVM2hCNE9BQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBSEFBQUFDa0NBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?RUFBUUFCQUFBQW9aN0NDQUFBQUFBQUFBQUFBQUFBQUo0QUFBQm1BR2tBYmdC?=
 =?us-ascii?Q?aEFHNEFZd0JsQUY4QWNBQnNBR0VBYmdCdUFHa0FiZ0JuQUY4QWR3QmhBSFFB?=
 =?us-ascii?Q?WlFCeUFHMEFZUUJ5QUdzQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFF?=
 =?us-ascii?Q?QUFBQUFBQUFBQWdBQUFBQUFuZ0FBQUdZQWJ3QjFBRzRBWkFCeUFIa0FYd0J3?=
 =?us-ascii?Q?QUdFQWNnQjBBRzRBWlFCeUFITUFYd0JuQUdZQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBUUFBQUFBQUFBQUNBQUFB?=
 =?us-ascii?Q?QUFDZUFBQUFaZ0J2QUhVQWJnQmtBSElBZVFCZkFIQUFZUUJ5QUhRQWJnQmxB?=
 =?us-ascii?Q?SElBY3dCZkFITUFZUUJ0QUhNQWRRQnVBR2NBWHdCakFHOEFiZ0JtQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQkFBQUFBQUFBQUFJQUFBQUFBSjRBQUFCbUFHOEFk?=
 =?us-ascii?Q?UUJ1QUdRQWNnQjVBRjhBY0FCaEFISUFkQUJ1QUdVQWNnQnpBRjhBY3dCaEFH?=
 =?us-ascii?Q?MEFjd0IxQUc0QVp3QmZBSElBWlFCekFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUVBQUFBQUFBQUFBZ0FBQUFBQW5nQUFBR1lBYndCMUFHNEFaQUJ5QUhrQVh3?=
 =?us-ascii?Q?QndBR0VBY2dCMEFHNEFaUUJ5QUhNQVh3QnpBRzBBYVFCakFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFRQUFBQUFBQUFBQ0FB?=
 =?us-ascii?Q?QUFBQUNlQUFBQVpnQnZBSFVBYmdCa0FISUFlUUJmQUhBQVlRQnlBSFFBYmdC?=
 =?us-ascii?Q?bEFISUFjd0JmQUhNQWRBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFCQUFBQUFBQUFBQUlBQUFBQUFKNEFBQUJtQUc4?=
 =?us-ascii?Q?QWRRQnVBR1FBY2dCNUFGOEFjQUJoQUhJQWRBQnVBR1VBY2dCekFGOEFkQUJ6?=
 =?us-ascii?Q?QUcwQVl3QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBRUFBQUFBQUFBQUFnQUFBQUFBbmdBQUFHWUFid0IxQUc0QVpBQnlBSGtB?=
 =?us-ascii?Q?WHdCd0FHRUFjZ0IwQUc0QVpRQnlBSE1BWHdCMUFHMEFZd0FBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQVFBQUFBQUFBQUFD?=
 =?us-ascii?Q?QUFBQUFBQ2VBQUFBWndCMEFITUFYd0J3QUhJQWJ3QmtBSFVBWXdCMEFGOEFk?=
 =?us-ascii?Q?QUJ5QUdFQWFRQnVBR2tBYmdCbkFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUJBQUFBQUFBQUFBSUFBQUFBQUo0QUFBQnpB?=
 =?us-ascii?Q?R0VBYkFCbEFITUFYd0JoQUdNQVl3QnZBSFVBYmdCMEFGOEFjQUJzQUdFQWJn?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFFQUFBQUFBQUFBQWdBQUFBQUFuZ0FBQUhNQVlRQnNBR1VBY3dCZkFI?=
 =?us-ascii?Q?RUFkUUJ2QUhRQVpRQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBUUFBQUFBQUFB?=
 =?us-ascii?Q?QUNBQUFBQUFDZUFBQUFjd0J1QUhBQWN3QmZBR3dBYVFCakFHVUFiZ0J6QUdV?=
 =?us-ascii?Q?QVh3QjBBR1VBY2dCdEFGOEFNUUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQkFBQUFBQUFBQUFJQUFBQUFBSjRBQUFC?=
 =?us-ascii?Q?ekFHNEFjQUJ6QUY4QWJBQnBBR01BWlFCdUFITUFaUUJmQUhRQVpRQnlBRzBB?=
 =?us-ascii?Q?WHdCekFIUUFkUUJrQUdVQWJnQjBBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUVBQUFBQUFBQUFBZ0FBQUFBQW5nQUFBSFlBWndCZkFHc0FaUUI1?=
 =?us-ascii?Q?QUhjQWJ3QnlBR1FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFRQUFBQUFB?=
 =?us-ascii?Q?QUFBQ0FBQUFBQUE9Ii8+PC9tZXRhPg=3D=3D?=
authentication-results: mediatek.com; dkim=none (message not signed)
 header.d=none;mediatek.com; dmarc=none action=none header.from=synopsys.com;
x-originating-ip: [198.182.37.200]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5d436b1a-17e6-4756-5ce2-08d80c8054bf
x-ms-traffictypediagnostic: BN6PR12MB1299:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR12MB1299CD795635CCD5489B777BD3820@BN6PR12MB1299.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-forefront-prvs: 042957ACD7
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wHwJ6ZDwqfSaB/mM1ruD6aWj4UjlPuETEJiX6FgzZ/741jfF0ejyK6C0raX4b1H30nE+dw2XiYcAqv67a9AXiE2chMT3928ULUcg2PhXjmD256zlATmBCikuIjzj0hARC61UVA/9zCMUPUKt0R2ux8sqtyfAaR+QiGcBvkG84fOZWQSp4AqKK9Z7oNE79e10uPkz4+Z31AiUkG1hVTeC4R9sszGfbXo0n1wdv0bMsxHp1NEQlGhiBoe6jTATz7TIGkWGfXguZsujY7rmOs2xlwoxmPoeIgtxgBinj1JV9J4DX4inwivDDLV12ciQBT/fpqVwejnGK8N+VCRyYEpQng==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR12MB1779.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(396003)(136003)(346002)(376002)(39860400002)(76116006)(66946007)(33656002)(7696005)(5660300002)(4326008)(186003)(478600001)(71200400001)(6506007)(86362001)(52536014)(66446008)(8676002)(110136005)(54906003)(4744005)(64756008)(9686003)(316002)(55016002)(66476007)(2906002)(26005)(66556008)(8936002)(107886003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 8Mo5a7Ilr9dXiqMawX5vPF3vdVM/NNeAfEo/sbJa5sTd+RBVx2YeZD3z2yFLO7I921pIEJ4U8V53ocKAUAd7AmwT8Xqvc8UtEIrxqQ3PIDJARwrEDdRFz2/MpztwdzR/MtIhoIOuQJfiKluw59SE21sK0o+a+IlcAyZpW9KLBPRgbQJMr5UW74H4WJ2D1WT7hifUO5CICKRz0kI8q4Gtvh1lExNgFiriUcvZCyrWxVvTZjFrPNSh9jzb8/nkaS7RTWv8ecxynP7vdUrLmWJ6lC03AN0Q+9FoR0Qo5YjJHXA5suLGDhpHdCcMH4o9+c5onX9ZniO0fInZbK5S0+1UZ+0MtTo3+I/Ma+RnTa07lSbch2eklI6hkwE8lKmHqAuPeOpZSBM25VzPiuvQO0chbx+mLKlcF30mT9jZgBpNMELPuBbWuLuNQ+DMw/JgRB4JVGOlZVm6OGMdyg0TY3ks0mBFQKntW1+PHWSezD2df3MbmN/fYWeG1Uu5l6GSDWpk
MIME-Version: 1.0
X-OriginatorOrg: synopsys.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d436b1a-17e6-4756-5ce2-08d80c8054bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jun 2020 14:20:58.9040 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FvmZXJavWRUAyspQSFJ5FMMJXv8kAk8NRshtP/Q8RQY6e7R95B303EQXNNeRJPseOZkectDGIOB/CLpElxEorg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR12MB1299
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_072105_383464_634DF707 
X-CRM114-Status: UNSURE (   7.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [149.117.87.133 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Biao Huang <biao.huang@mediatek.com>
Date: Jun/09/2020, 10:41:33 (UTC+00:00)

> -		rx_q->rx_count_frames += priv->rx_coal_frames;
> -		if (rx_q->rx_count_frames > priv->rx_coal_frames)
> +		if (rx_q->rx_count_frames >= priv->rx_coal_frames)

This is no right. If you want to RX IC bit to not always be set you need 
to change coalesce parameters using ethtool.

---
Thanks,
Jose Miguel Abreu

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
